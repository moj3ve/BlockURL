include $(THEOS)/makefiles/common.mk

ARCHS = arm64
include $(THEOS_MAKE_PATH)/aggregate.mk
TWEAK_NAME = Test
Test_FILES = Tweak.xm UAO.m
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
