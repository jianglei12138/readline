LOCAL_PATH:= $(call my-dir)


#################termcap#####################
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/readline
    
LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-ansi -Wall 
LOCAL_SRC_FILES:= \
	termcap/termcap.c \
	termcap/tparam.c \
	termcap/version.c
LOCAL_MODULE := termcap
include $(BUILD_SHARED_LIBRARY)


#################history#####################
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/readline

LOCAL_SRC_FILES:= \
	readline/histexpand.c readline/history.c    readline/mbutil.c     readline/xfree.c   \
	readline/histfile.c   readline/histsearch.c readline/shell.c      readline/xmalloc.c 
LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-ansi -Wall 
LOCAL_MODULE := history
include $(BUILD_SHARED_LIBRARY)


#################readline#####################
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	readline/bind.c         readline/histexpand.c   readline/kill.c         readline/readline.c     readline/tilde.c    \
	readline/callback.c     readline/histfile.c     readline/macro.c        readline/rltty.c        readline/undo.c     \
	readline/colors.c       readline/history.c      readline/mbutil.c       readline/search.c       readline/util.c     \
	readline/compat.c       readline/histsearch.c   readline/misc.c         readline/shell.c        readline/vi_mode.c  \
	readline/complete.c     readline/input.c        readline/nls.c          readline/signals.c      readline/xfree.c    \
	readline/display.c      readline/isearch.c      readline/parens.c       readline/terminal.c     readline/xmalloc.c  \
	readline/funmap.c       readline/keymaps.c      readline/parse-colors.c readline/text.c

LOCAL_C_INCLUDES += \
    $(LOCAL_PATH)/readline
LOCAL_CFLAGS := \
	-DHAVE_CONFIG_H \
	-ansi -Wall 
LOCAL_SHARED_LIBRARIES := termcap
LOCAL_MODULE := readline

include $(BUILD_SHARED_LIBRARY)



