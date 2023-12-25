(* 
Script to check the wifi quality and toggle wifi off and on. 
Turning it off and on will will force laptop to connect to the better node in my Xfinity Xpod mesh network.
*)

(*
-- good signal
  agrCtlRSSI: -63
     agrExtRSSI: 0
    agrCtlNoise: -91
    lastTxRate: 1134
    maxRate: 867

-- bad signal

agrCtlRSSI: -78
     agrExtRSSI: 0
    agrCtlNoise: -90
    lastTxRate: 816
    maxRate: 867
*)

-- thresholds

set agrCtlRSSIThreshold to 0
set agrCtlNoiseThreshold to 0
set lastTxRateThreshold to 800
set maxTxRateThreshold to 800

-- Get wifi SSID, signal (agrCtlRSSI), and noise agrCtlNoise
-- TODO turn this into one call and parse the results
set mySSID to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ SSID/ {print substr($0, index($0, $2))}'"

set agrCtlRSSI to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ agrCtlRSSI/ {print substr($0, index($0, $2))}'"

set agrCtlNoise to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ agrCtlNoise/ {print substr($0, index($0, $2))}'"

set lastTxRate to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ lastTxRate/ {print substr($0, index($0, $2))}'"

set maxRate to do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | awk '/ maxRate/ {print substr($0, index($0, $2))}'"

-- Check and refresh wifi
-- TODO finish testing script to find thresholds.

-- check if on Gebhardt
if mySSID is "Gebhardt"
    display dialog "SSID: " & mySSID & return & "lastTxRate = " & lastTxRate & "; lastTxRateThreshold = " & lastTxRateThreshold

    -- if tx rate is greater than threshold
    -- TODO not working because tx rate is varies a lot
    if lastTxRate > lastTxRateThreshold
        --my toggleWifi()        
    end
    
    -- TODO figure out the right noise and RSSI thresholds
    -- if current noise or signal strength < thresholds then toggle wifi
    if agrCtlRSSI < agrCtlRSSIThreshold
        --my toggleWifi()
    end

    if agrCtlNoise < agrCtlNoiseThreshold
        --my toggleWifi()        
    end
end

on toggleWifi()
    display dialog "Toggle wifi?"
    do shell script "networksetup -setairportpower en0 off; sleep 2; networksetup -setairportpower en0 on"
end


(*

/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport
     agrCtlRSSI: -57
     agrExtRSSI: 0
    agrCtlNoise: -93
    agrExtNoise: 0
          state: scanning
        op mode: station
     lastTxRate: 216
        maxRate: 867
lastAssocStatus: 0
    802.11 auth: open
      link auth: wpa2-psk
          BSSID:
           SSID: Gebhardt
            MCS: 11
  guardInterval: 1600
            NSS: 2
        channel: 157,80

Do grep a field

# Gets the CtlRSSI (signal strength)
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI | sed -e 's/^.*://g' | xargs -I SIGNAL printf "\rRSSI dBm: SIGNAL"

/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlRSSI | sed -e 's/^.*://g' | xargs -I SIGNAL printf "\rSIGNAL"

# Gets the CtlNoise (signal noise) 
/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I | grep CtlNoise | sed -e 's/^.*://g' | xargs -I SIGNAL printf "\rSIGNAL"


[Scripting macOS, part 6: Turn it off and on again Ð Scripting OS X](https://scriptingosx.com/2021/08/scripting-macos-part-6-turn-it-off-and-on-again/)

# Reset Wi-Fi
# by turning it off and on again


# turn off Wi-Fi
networksetup -setairportpower en0 off 

# wait for a few seconds

# turn on Wi-Fi
networksetup -setairportpower en0 on

[macos - Automatically refreshing my WiFi connection via a script? - Ask Different](https://apple.stackexchange.com/questions/177023/automatically-refreshing-my-wifi-connection-via-a-script)

Comment on runnnig applescript as an always open app. Good scripts on fining SSID.

on idle
            set checkSSID to (do shell script "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I |grep ' SSID:'|awk -F:\\  '{print  $2}' ")

            set checkIp to do shell script "ifconfig en0|grep 'inet '|cut -d ' ' -f 2"

            if checkSSID starts with "Google Starbucks" and checkIp starts with 169 then

                do shell script "networksetup -setairportpower en0 off; sleep 2; networksetup -setairportpower en0 on"
            end if
            return 10 -- seconds
end idle

*)

