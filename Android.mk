#
# Copyright (C) 2012 The Android Open-Source Project
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

ifeq ($(TARGET_DEVICE),A001)

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

include $(CLEAR_VARS)

QCRYPTO_MODULE := $(TARGET_RECOVERY_ROOT_OUT)/sbin/qcrypto_module.ko
$(QCRYPTO_MODULE): $(ANDROID_PRODUCT_OUT)/kernel
	@cp device/asus/A001/recovery/qcrypto_module.ko-unsigned $(QCRYPTO_MODULE)
	kernel/asus/A001/scripts/sign-file sha512 \
		$(ANDROID_PRODUCT_OUT)/obj/KERNEL_OBJ/signing_key.priv \
		$(ANDROID_PRODUCT_OUT)/obj/KERNEL_OBJ/signing_key.x509 \
		$(QCRYPTO_MODULE)

ALL_DEFAULT_INSTALLED_MODULES += $(QCRYPTO_MODULE)

TEXFAT_MODULE := $(TARGET_RECOVERY_ROOT_OUT)/sbin/texfat.ko
$(TEXFAT_MODULE): $(ANDROID_PRODUCT_OUT)/kernel
	@cp device/asus/A001/recovery/texfat.ko-unsigned $(TEXFAT_MODULE)
	kernel/asus/A001/scripts/sign-file sha512 \
		$(ANDROID_PRODUCT_OUT)/obj/KERNEL_OBJ/signing_key.priv \
		$(ANDROID_PRODUCT_OUT)/obj/KERNEL_OBJ/signing_key.x509 \
		$(TEXFAT_MODULE)

ALL_DEFAULT_INSTALLED_MODULES += $(TEXFAT_MODULE)

TNTFS_MODULE := $(TARGET_RECOVERY_ROOT_OUT)/sbin/tntfs.ko
$(TNTFS_MODULE): $(ANDROID_PRODUCT_OUT)/kernel
	@cp device/asus/A001/recovery/tntfs.ko-unsigned $(TNTFS_MODULE)
	kernel/asus/A001/scripts/sign-file sha512 \
		$(ANDROID_PRODUCT_OUT)/obj/KERNEL_OBJ/signing_key.priv \
		$(ANDROID_PRODUCT_OUT)/obj/KERNEL_OBJ/signing_key.x509 \
		$(TNTFS_MODULE)

ALL_DEFAULT_INSTALLED_MODULES += $(TNTFS_MODULE)
endif
