# Copyright (C) 2016 The Pure Nexus Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt Packages
PRODUCT_PACKAGES += \
    NexusLauncherIcons \
    NexusWallpapersStubPrebuilt \
    WallpaperPickerGooglePrebuilt \
    NexusLauncherPrebuilt \
    WallpapersUsTwo \
    Turbo

# Include package overlays
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/prebuilt/overlay/

# wallpaper location prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.wallpapers_loc_request_suw=true

# live wallpapers arm64 only
ifneq ($(filter angler bullhead marlin sailfish,$(TARGET_PRODUCT)),)
PRODUCT_PACKAGES += \
    WallpapersBReel \
    libgdx.so \
    libgeswallpapers-jni.so \
    libjpeg.so

PRODUCT_COPY_FILES += \
    vendor/prebuilt/lib64/libgdx.so:system/lib64/libgdx.so \
    vendor/prebuilt/lib64/libgeswallpapers-jni.so:system/lib64/libgeswallpapers-jni.so
endif
