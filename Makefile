ARCHS = armv7 arm64
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AdblockForShahid

AdblockForShahid_FILES = Tweak.x
AdblockForShahid_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
