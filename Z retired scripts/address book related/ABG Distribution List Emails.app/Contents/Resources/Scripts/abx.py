#!/usr/bin/python

# author: Martin Michel
# created: 02.08.2008

# This Python script is called from an AppleScript and returns information
# from the Mac OS X Address Book (e.g. group names, distribution list emails).

import sys
from AddressBook import *

class ABAccess:
    """I am a class allowing access to the Mac OS X Address Book."""
    def __init__(self):
        self.ab = ABAddressBook.sharedAddressBook()
    
    def getabgroups(self):
        """I am returning a dictionary containing Address Book names and
        their corresponding IDs."""
        dict = {}
        abgroups = self.ab.groups()
        for abgroup in abgroups:
            if not abgroup.name() in dict.keys():
                dict[abgroup.name()] = [abgroup.uniqueId()]
            else:
                if not abgroup.uniqueId() in dict[abgroup.name()]:
                    dict[abgroup.name()].append(abgroup.uniqueId())
        return dict
    
    def getdlistemails(self, abgroupid):
        """I am returning a dictionary containing the person IDs available
        in a given Address Book Group and their distribution list emails."""
        dict = {}
        abgroup = self.ab.recordForUniqueId_(abgroupid)
        people = abgroup.members()
        for person in people:
            emailidx = abgroup.distributionIndexForProperty_person_(kABEmailProperty, person)
            emails = person.valueForProperty_(kABEmailProperty)
            if emails is not None:
                if not person.uniqueId() in dict.keys(): 
                    dict[person.uniqueId()] = emails.valueAtIndex_(emailidx)
        return dict      

def main():
    if sys.argv[1] == 'getgroups':
		abx = ABAccess()
		abgroups = abx.getabgroups()
		abgroupnames = abgroups.keys()
		abgroupnames.sort()
		for abgroupname in abgroupnames:
			for abgroupid in abgroups[abgroupname]:
				output = '%s\t%s' % (abgroupid, abgroupname)
				print output.encode('utf-8')
				
    elif sys.argv[1] == 'getdlistemails':
        abgroupid = sys.argv[2]
        abx = ABAccess()
        dlistemails = abx.getdlistemails(abgroupid)
        for personid in dlistemails:
            output = '%s\t%s' % (personid, dlistemails[personid])
            print output.encode('utf-8')

if __name__ == '__main__':
    main()