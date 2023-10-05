-- script to alert on wrong charger

(*
shell script to get the wattage line
example command and output
pmset -g adapter
 Wattage = 85W
 Current = 4250mA
 Voltage = 20000mV
 AdapterID = 0
 Family Code = 0xe000400a
*)
set pmset_adapter to (do shell script "/bin/bash -s <<'EOF'
pmset -g adapter
EOF")

-- TODO: parse result in applscript vs using sed
set current_wattage to (do shell script "/bin/bash -s <<'EOF'
pmset_adapter=$(pmset -g adapter)
# Read Wattage line (the first line) and make sure it is > 50 watts
read wattage_line <<< \"$pmset_adapter\"
cur_watts=$(echo \"$wattage_line\" | sed 's/[^0-9]*//g')
echo \"$cur_watts\"
EOF")

-- detect if there is an adapter attached
if pmset_adapter is not "No adapter attached." then

    if current_wattage > 50 then
        -- uncomment for debugging
        display notification "At " & current_wattage & " watts" with title "On Right Charger"
    else
        display notification "At " & current_wattage & " watts" with title "On Wrong Charger"        
    end if
else
    display notification "No adapter attached." with title "No Charger"
end if