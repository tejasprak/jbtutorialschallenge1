include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JBTutorialsChallenge1
JBTutorialsChallenge1_FILES = Tweak.xm
JBTutorialsChallenge1_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
