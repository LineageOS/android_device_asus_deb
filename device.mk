#
# Copyright 2013 The Android Open-Source Project
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
#

# rild
PRODUCT_PACKAGES := \
    rild \
    CarrierConfig \
    BasicSmsReceiver

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.deb \
    init.deb.rc

# Features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Camera
PRODUCT_PACKAGES += \
    camera.deb

PRODUCT_PACKAGES += \
    hostapd_default.conf

# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/flo/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/asus/deb/deb-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := device/asus/deb/overlay
