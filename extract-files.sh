#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=a10gb
MANUFACTURER=allwinner

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /lib/modules/disp.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/disp.ko
adb pull /lib/modules/hv2605.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hv2605.ko
adb pull /lib/modules/lcd.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lcd.ko
adb pull /lib/modules/sun4i-keyboard.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i-keyboard.ko
adb pull /system/lib/egl/libEGL_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_mali.so
adb pull /system/lib/egl/libGLESv1_CM_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_mali.so
adb pull /system/lib/egl/libGLESv2_mali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_mali.so
adb pull /system/lib/hw/audio.primary.exDroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/audio.primary.exDroid.so
adb pull /system/lib/hw/gralloc.sun4i.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.sun4i.so
adb pull /system/lib/hw/hwcomposer.exDroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hwcomposer.exDroid.so
adb pull /system/lib/hw/lights.sun4i.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lights.sun4i.so
adb pull /system/lib/hw/sensors.exDroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sensors.exDroid.so
adb pull /system/lib/libMali.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libMali.so
adb pull /system/lib/libUMP.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libUMP.so
adb pull /system/lib/modules/bma250.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bma250.ko
adb pull /system/lib/modules/gc0308.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gc0308.ko
adb pull /system/lib/modules/goodix_touch.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/goodix_touch.ko
adb pull /system/lib/modules/gt2005.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gt2005.ko
adb pull /system/lib/modules/hdmi.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hdmi.ko
adb pull /system/lib/modules/mali.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/mali.ko
adb pull /system/lib/modules/nano_if.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/nano_if.ko
adb pull /system/lib/modules/nano_ksdio.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/nano_ksdio.ko
adb pull /system/lib/modules/sun4i-ir.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i-ir.ko
adb pull /system/lib/modules/sun4i-vibrator.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i-vibrator.ko
adb pull /system/lib/modules/sun4i_csi0.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i_csi0.ko
adb pull /system/lib/modules/sun4i_csi1.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i_csi1.ko
adb pull /system/lib/modules/ump.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ump.ko
adb pull /system/lib/modules/videobuf-core.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/videobuf-core.ko
adb pull /system/lib/modules/videobuf-dma-contig.ko ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/videobuf-dma-contig.ko
adb pull /system/lib/modules/x_mac.axf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/x_mac.axf
adb pull /system/usr/idc/gt80x.idc ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gt80x.idc
adb pull /system/usr/keylayout/hv_keypad.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hv_keypad.kl
adb pull /system/usr/keylayout/sun4i-ir.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i-ir.kl
adb pull /system/usr/keylayout/sun4i-keyboard.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sun4i-keyboard.kl

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
#PRODUCT_COPY_FILES := \\
#    vendor/__MANUFACTURER__/__DEVICE__/proprietary/XXX:obj/lib/XXX

# All the blobs necessary for a10gb
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/disp.ko:root/lib/modules/disp.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hv2605.ko:root/lib/modules/hv2605.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lcd.ko:root/lib/modules/lcd.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-keyboard.ko:root/lib/modules/sun4i-keyboard.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_mali.so:system/lib/egl/libEGL_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/audio.primary.exDroid.so:system/lib/hw/audio.primary.exDroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.sun4i.so:system/lib/hw/gralloc.sun4i.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hwcomposer.exDroid.so:system/lib/hw/hwcomposer.exDroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.sun4i.so:system/lib/hw/lights.sun4i.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.exDroid.so:system/lib/hw/sensors.exDroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libMali.so:system/lib/libMali.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libUMP.so:system/lib/libUMP.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bma250.ko:system/lib/modules/bma250.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gc0308.ko:system/lib/modules/gc0308.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/goodix_touch.ko:system/lib/modules/goodix_touch.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gt2005.ko:system/lib/modules/gt2005.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hdmi.ko:system/lib/modules/hdmi.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/mali.ko:system/lib/modules/mali.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/nano_if.ko:system/lib/modules/nano_if.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/nano_ksdio.ko:system/lib/modules/nano_ksdio.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-ir.ko:system/lib/modules/sun4i-ir.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-vibrator.ko:system/lib/modules/sun4i-vibrator.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i_csi0.ko:system/lib/modules/sun4i_csi0.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i_csi1.ko:system/lib/modules/sun4i_csi1.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ump.ko:system/lib/modules/ump.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/videobuf-core.ko:system/lib/modules/videobuf-core.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/videobuf-dma-contig.ko:system/lib/modules/videobuf-dma-contig.ko \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/x_mac.axf:system/lib/modules/x_mac.axf \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gt80x.idc:system/usr/idc/gt80x.idc \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hv_keypad.kl:system/usr/keylayout/hv_keypad.kl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-ir.kl:system/usr/keylayout/sun4i-ir.kl \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl

# All the apks necessary for a10gb
#PRODUCT_PACKAGES += \\
#    XXX

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),a10gb)
LOCAL_PATH:=\$(call my-dir)

# Module makefile rules for apks on a10gb

# XXX

#include \$(CLEAR_VARS)

#LOCAL_MODULE := XXX
#LOCAL_SRC_FILES := \$(LOCAL_MODULE).apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := PRESIGNED
#LOCAL_MODULE_SUFFIX := \$(COMMON_ANDROID_PACKAGE_SUFFIX)
#include \$(BUILD_PREBUILT)

endif

EOF

./setup-makefiles.sh
