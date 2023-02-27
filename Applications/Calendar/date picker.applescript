# shows a date picker dialog and returns the selected date
# Taken from [applescript - Problem with date picker showing (main thread issue?) - Stack Overflow](https://stackoverflow.com/questions/56216434/problem-with-date-picker-showing-main-thread-issue)
# [dialog-node/datepicker.osa at master á bat-tomr/dialog-node](https://github.com/bat-tomr/dialog-node/blob/master/datepicker.osa)

# 06/04/16 09:35:02
# Author: Shane Stanley
# Adapted by Christopher Stone
# Fixed & Rewritten by CJK
--------------------------------------------------------------------------------
use framework "AppKit"
use scripting additions

property this : a reference to the current application
property nil : a reference to missing value
property _1 : a reference to reference

property NSAlert : a reference to NSAlert of this
property NSDatePicker : a reference to NSDatePicker of this
property NSView : a reference to NSView of this

property NSAlertSecondButtonReturn : 1001
property NSHourMinuteSecondDatePickerElementFlag : 14
property NSTextFieldAndStepperDatePickerStyle : 0
property NSYearMonthDayDatePickerElementFlag : 224
--------------------------------------------------------------------------------
property date : missing value
--------------------------------------------------------------------------------
on run
    its performSelectorOnMainThread:("showDatePicker:") withObject:{Â
        NSTextFieldAndStepperDatePickerStyle, Â
        NSYearMonthDayDatePickerElementFlag + Â
        NSHourMinuteSecondDatePickerElementFlag} Â
        waitUntilDone:true

    return my date
end run

on showDatePicker:params
    local params

    set {PickerStyle, PickerElements} to params

    tell (current date) to set Â
        [dateFrom, day, its month, day, year, time] to Â
        [it, 1, 4, 1, 2015, 12 * hours + 0 * minutes]

    tell NSDatePicker's alloc()
        initWithFrame_({{0, 0}, {100, 100}})
        setDatePickerStyle_(PickerStyle)
        setDatePickerElements_(PickerElements)
        setDateValue_(dateFrom)
        set fittingSize to fittingSize()
        setFrameSize_(fittingSize)

        set View to NSView's alloc()
        View's initWithFrame:{{0, 0}, {100, 175}}
        View's setFrameSize:fittingSize
        View's addSubview:it

        tell NSAlert's alloc()
            init()
            setMessageText_("Pick a date and time")
            setInformativeText_("Any date")
            addButtonWithTitle_("OK")
            addButtonWithTitle_("Cancel")
            setAccessoryView_(View)

            runModal()
        end tell

        set my date to dateValue() as date
    end tell
end showDatePicker:
---------------------------------------------------------------------------?END?