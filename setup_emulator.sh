#!/bin/bash
AVD_NAME=emulator_hwkeyboard
ANDROID_VERSION=android-21
ABI_VERSION=armeabi-v7a
SKIN=WXGA720
HARDWARE_KEYBOARD_ENABLED=hw.keyboard=yes

echo no | android create avd --force --name $AVD_NAME --target $ANDROID_VERSION --abi $ABI_VERSION --skin $SKIN

echo $HARDWARE_KEYBOARD_ENABLED >> ~/.android/avd/$AVD_NAME.avd/config.ini
