LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS) 
 
LOCAL_MODULE    := libiconv 
 
LOCAL_CFLAGS    := \
	-Wno-multichar \
	-D_ANDROID \
	-DBUILDING_LIBICONV \
	-DIN_LIBRARY \
	-DLIBDIR="\"c\"" \
    -I$(LOCAL_PATH)/../ \
    -I$(LOCAL_PATH)/../include/ \
    -I$(LOCAL_PATH)/../lib/ \
	-I$(LOCAL_PATH)/../libcharset/include \

LOCAL_SRC_FILES := \
     /../lib/iconv.c \
     /../lib/relocatable.c \
     /../libcharset/lib/localcharset.c \

include $(BUILD_SHARED_LIBRARY) 
 
LOCAL_LDLIBS    := -llog -lcharset
