#!/bin/bash
#Geekbox android source download script.  This is optimized for Ubuntu (Version 14.04 or higher) & Debian (version 8 or higher)

mkdir ~/bin/repo
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git clone https://github.com/geekbox/lollipop geekboxlollipopsource
cd geekboxlollipopsource
repo init
repo sync -j 20


# convert "/" to "_"
cat ./project.list > /tmp/project.path
sed -i "s/\//_/g" /tmp/project.path



# Special repository
# the default name is too long, so we cut off the tail-part
# 100 characters limited by Github
git clone https://github.com/geekbox/lollipop_external_chromium_org_third_party_eyesfree_src_android_java_src_com_googlecode_eyesfree_bra external/chromium_org/third_party/eyesfree/src/android/java/src/com/googlecode/eyesfree/braille


# Large file repositories
# 100MB limited by Github
# TODO: github LSF
git clone https://android.googlesource.com/platform/external/eclipse-basebuilder -b android-5.1.0_r3 external/eclipse-basebuilder
git clone https://android.googlesource.com/platform/prebuilts/clang/linux-x86/host/3.4 -b android-5.1.0_r3 prebuilts/clang/linux-x86/host/3.4
git clone https://android.googlesource.com/platform/prebuilts/clang/linux-x86/host/3.5 -b android-5.1.0_r3 prebuilts/clang/linux-x86/host/3.5
git clone https://android.googlesource.com/platform/prebuilts/sdk -b android-5.1.0_r3 prebuilts/sdk
git clone https://android.googlesource.com/platform/prebuilts/eclipse -b android-5.1.0_r3 prebuilts/eclipse
git clone https://android.googlesource.com/device/htc/flounder-kernel -b android-5.1.0_r3 device/htc/flounder-kernel
git clone https://android.googlesource.com/device/moto/shamu-kernel -b android-5.1.0_r3 device/moto/shamu-kernel
git clone https://android.googlesource.com/platform/prebuilts/android-emulator -b android-5.1.0_r3 prebuilts/android-emulator
git clone https://android.googlesource.com/platform/prebuilts/qemu-kernel -b android-5.1.0_r3 rebuilts/qemu-kernel
