#!/bin/bash

# BetterDisplay docs: [Integration features, CLI · waydabber/BetterDisplay Wiki](https://github.com/waydabber/BetterDisplay/wiki/Integration-features,-CLI)

# Define the names of your displays
DISPLAY1="M34WQ"
DISPLAY2="Built-in Display"

# Move DISPLAY2 to the bottom left corner of DISPLAY1
# betterdisplaycli requires Xcode install to work so using executable in the app bundle
/Applications/BetterDisplay.app/Contents/MacOS/BetterDisplay perform -namelike="$DISPLAY2" -moveTo=bottomLeftCorner -targetNameLike="$DISPLAY1"


# This script moves DISPLAY2 to the bottom left corner of DISPLAY1. You can adjust the -moveTo parameter to other positions like topLeft, topRight, bottomRight, etc., depending on your needs1.
# - `moveTo` - Move display next to an other display in the display layout using direction specifiers. A target display (relative to which the display is moved) must be specified. Specific values must be provided. Command, no value must be specified. Device (display) specific feature. Pro feature. Available values: `topLeftCorner`, `topLeft`, `top`, `topRight`, `topRightCorner`, `leftTop`, `left`, `leftBottom`, `rightTop`, `right`, `rightBottom`, `bottomLeftCorner`, `bottomLeft`, `bottom`, `bottomRight`, `bottomRightCorner`.

# Moving a display relative to an other display using -moveTo (note you can use -placement for coordinates) and configure mirroring:

# https://github.com/waydabber/BetterDisplay/issues/2669#issuecomment-1953082107
# https://github.com/waydabber/BetterDisplay/issues/2666#issuecomment-1953187609

# not sure if this command could be helpful. Worth trying.
# reconfigure - Redetect/reconfigure displays. Command, no value must be specified. Not a device (display) specific feature.
#/Applications/BetterDisplay.app/Contents/MacOS/BetterDisplay perform -reconfigure


# How to look up display names.
# ./BetterDisplay get -identifiers
# {
#   "alphanumericSerial" : "",
#   "deviceType" : "Display",
#   "displayID" : "1",
#   "model" : "41038",
#   "name" : "Built-in Display",
#   "originalName" : "Color LCD",
#   "productName" : "Color LCD",
#   "registryLocation" : "IOService:\/AppleARMPE\/arm-io\/AppleT600xIO\/disp0@8A000000\/AppleCLCD2",
#   "serial" : "4251086178",
#   "tagID" : "2",
#   "UUID" : "37D8832A-2D66-02CA-B9F7-8F30A301B230",
#   "vendor" : "1552",
#   "weekOfManufacture" : "0",
#   "yearOfManufacture" : "0"
# },{
#   "alphanumericSerial" : "",
#   "deviceType" : "Display",
#   "displayID" : "2",
#   "model" : "13314",
#   "name" : "M34WQ",
#   "originalName" : "M34WQ",
#   "productName" : "M34WQ",
#   "registryLocation" : "IOService:\/AppleARMPE\/arm-io\/AppleT600xIO\/dispext0@88000000\/AppleCLCD2",
#   "serial" : "22",
#   "tagID" : "14",
#   "UUID" : "26C098C8-739B-4B0E-823D-A436F8202491",
#   "vendor" : "7252",
#   "weekOfManufacture" : "23",
#   "yearOfManufacture" : "2022"
# }

# How to get resolution of a display
# ./BetterDisplay get -resolution
# 3440x1440,1512x982

# ./BetterDisplay get -nameLike="Built-in" -resolution
# 1512x982