
# Battery script development

# to set up

1. cp check_charger.plist to ~/Library/LaunchAgents/
2. launchctl load ~/Library/LaunchAgents/check_charger.plist

To disable:
1. launchctl unload ~/Library/LaunchAgents/check_charger.plist

To run manually:
`osascript ~/Library/Scripts/battery/batt.applescript`

TODO: make an easier way to run manually.

# Development Notes

Want to check for battery discharging on AC adapter and alert.

Need to look at the output of pmset -g ps and rawbatt
Need to parse it. Semicolon delimited; can parse in AppleScript

These 2 commands are the most interesting. ps looks easier to parse. Look at 2nd item.

INVOKE: pmset -g ps
Now drawing from 'AC Power'
 -InternalBattery-0 (id=34734179)	100%; charged; 0:00 remaining present: true

first line look for AC Power
second line fields
1: battery %
2: charged, discharging, charging

pmset -g adapter

If ever on the 18W adapter than I need to alert

My three diff types of adapters (missing my 87W one)

Wattage = 18W
 Current = 1500mA
 Voltage = 12000mV
 AdapterID = 0
 Family Code = 0xe000400a

Wattage = 85W
 Current = 4250mA
 Voltage = 20000mV
 AdapterID = 0
 Family Code = 0xe000400a

Wattage = 65W
 Current = 3270mA
 Voltage = 20000mV
 AdapterID = 28694
 Manufacturer = Apple Inc.
 Family Code = 0xe000400a
 Serial String = C0622620CE7QCHXCX
 Adapter Name = 67W USB-C Power Adapter
 Hardware Version = 1.0
 Firmware Version = 01050036

# Creating and setting up Launchd files

Good description how at this link: [How to Use Launchd to Schedule Run Scripts on Mac - Make Tech Easier](https://www.maketecheasier.com/use-launchd-run-scripts-on-schedule-macos/)

# Example Outputs

example outputs: on batt will return something like...
 - Now drawing from 'Battery Power' -InternalBattery-0  82%; discharging; 4:06 remaining

Now drawing from 'AC Power'
 -InternalBattery-0 (id=34734179)	80%; AC attached; not charging present: true

INVOKE: pmset -g rawbatt
10/03/2023 11:31:50
 AC; Not Charging; 100%; Cap=100: FCC=100; Design=6075; Time=0:00; 0mA; Cycles=104/1000; Location=0; 
 Polled boot=09/29/2023 13:11:30; Full=10/03/2023 11:23:43; User visible=10/03/2023 11:31:43

AH HA! Maybe just need to check the current form the adapter. If it's not high enough then alert

INVOKE: pmset -g adapter
 Wattage = 85W
 Current = 4250mA
 Voltage = 20000mV
 AdapterID = 0
 Family Code = 0xe000400a

## Example when delayed charging (i.e. will be charged by 10:30)
pmset -g rawbatt
10/04/2023 07:29:54
 AC; Not Charging; 80%; Cap=80: FCC=100; Design=6075; Time=0:00; 0mA; Cycles=105/1000; Location=0;
 Polled boot=09/29/2023 13:11:30; Full=10/04/2023 07:27:03; User visible=10/04/2023 07:29:03
pmset -g ps
Now drawing from 'AC Power'
 -InternalBattery-0 (id=34734179)	80%; AC attached; not charging present: true
pmset -g adapter
 Wattage = 85W
 Current = 4250mA
 Voltage = 20000mV
 AdapterID = 0
 Family Code = 0xe000400a

# pmset info

Use pmset to get battery levels

Interesting pmset commands from `pmset -g everything`

INVOKE: pmset -g adapter
 Wattage = 85W
 Current = 4250mA
 Voltage = 20000mV
 AdapterID = 0
 Family Code = 0xe000400a

INVOKE: pmset -g batt
INVOKE: pmset -g ps
Now drawing from 'AC Power'
 -InternalBattery-0 (id=34734179)	100%; charged; 0:00 remaining present: true

INVOKE: pmset -g rawbatt
10/03/2023 11:31:50
 AC; Not Charging; 100%; Cap=100: FCC=100; Design=6075; Time=0:00; 0mA; Cycles=104/1000; Location=0; 
 Polled boot=09/29/2023 13:11:30; Full=10/03/2023 11:23:43; User visible=10/03/2023 11:31:43

INVOKE: pmset -g sysload
2023-10-03 11:31:50 -0700 
  combined level = OK
  - user level = OK
  - battery level = Great
  - thermal level = Great

INVOKE: pmset -g useractivity
2023-10-03 11:31:50 -0700 [KernelDisplayEvent] User is active on the system
2023-10-03 11:31:50 -0700 UserActivity Level=0x01
  Level = 'PresentActive'
  MostSignificant = 'PresentActive'


pmset -g

Prints a snapshot of battery/power source state at the moment.

pmset -g
System-wide power settings:
Currently in use:
 standby              1
 Sleep On Power Button 1
 hibernatefile        /var/vm/sleepimage
 powernap             1
 networkoversleep     0
 disksleep            10
 sleep                1 (sleep prevented by sharingd, backupd, coreaudiod, powerd, Music)
 hibernatemode        3
 ttyskeepawake        1
 displaysleep         30
 tcpkeepalive         1
 lowpowermode         0
 womp                 1

pmset -g batt

If your system suddenly sleeps on battery power with 20-50% of capacity remaining, leave this command running in a Terminal window. When you see the problem and later power and wake the computer, you'll be able to detect sudden discontinuities (like a jump from 30% to 0%) indicative of an aging battery.

# Other products and programs that might also be options

[Power Manager - Automation and Energy Saving Software for macOS](https://www.dssw.co.uk/powermanager/)


# Links

[How to Use Launchd to Schedule Run Scripts on Mac - Make Tech Easier](https://www.maketecheasier.com/use-launchd-run-scripts-on-schedule-macos/)
[A launchd Tutorial](https://launchd.info/)
[Creating Launch Daemons and Agents](https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPSystemStartup/Chapters/CreatingLaunchdJobs.html#//apple_ref/doc/uid/10000172i-SW7-BCIEDDBJ)

- [Mac crontab: Creating macOS startup jobs with crontab, er, launchd | alvinalexander.com](https://alvinalexander.com/mac-os-x/mac-osx-startup-crontab-launchd-jobs/)
- [bash - Script to play a warning when battery level is under a threshold in MacOS - Stack Overflow](https://stackoverflow.com/questions/53997451/script-to-play-a-warning-when-battery-level-is-under-a-threshold-in-macos)
- [macos - Detect battery percentage applescript - Ask Different](https://apple.stackexchange.com/questions/246464/detect-battery-percentage-applescript)
- [osx yosemite - Detect battery percentage with applescript - Stack Overflow](https://stackoverflow.com/questions/38447131/detect-battery-percentage-with-applescript)
- [macos - How do I show the battery percentage on a MacBook Pro by code? (AppleScript, do shell script, etc.) - Stack Overflow](https://stackoverflow.com/questions/45604828/how-do-i-show-the-battery-percentage-on-a-macbook-pro-by-code-applescript-do#:~:text=You%20can%20get%20the%20information%20about%20the%20Power,%22system_profiler%20SPPowerDataType%20%7C%20awk%20%27%2FHibernate%20Mode%2F%20%7Bprint%20%24NF%7D%27%22)

[How to extract a number from a string using Bash example - Linux Tutorials - Learn Linux Configuration](https://linuxconfig.org/how-to-extract-number-from-a-string-using-bash-example)

[Event based on battery charge level](https://mymac.info/post/event-based-on-battery-charge-level)

[macos - Run osascript (AppleScript) from launchd / launctl - Stack Overflow](https://stackoverflow.com/questions/54459344/run-osascript-applescript-from-launchd-launctl)

[https://opensource.apple.com/s](https://opensource.apple.com/source/launchd/launchd-257/launchd/doc/HOWTO.html)
