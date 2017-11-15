LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    libbase \
    libhidltransport \
    liblog \
    libcamera_client \
    libutils \
    libcutils \
    libgui \
    android.hidl.token@1.0-utils

LOCAL_STATIC_LIBRARIES := \
     libarect

LOCAL_C_INCLUDES += \
    system/media/camera/include
    framework/native/include \

LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE := camera.qcom
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_32_BIT_ONLY := true
include $(BUILD_SHARED_LIBRARY)

#include $(BUILD_HEAPTRACKED_SHARED_LIBRARY)
