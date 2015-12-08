TARGET_PREBUILT_KERNEL := $(ANDROID_BUILD_TOP)/kernel/output/bImage
KERNEL_DIR := $(ANDROID_BUILD_TOP)/kernel
SCRIPTS_FOR_KERNEL := scripts/build_sun7i_android.sh


$(TARGET_PREBUILT_KERNEL) : need_to_rebuild
	(cd $(KERNEL_DIR) && [ -x $(SCRIPTS_FOR_KERNEL) ] && ./$(SCRIPTS_FOR_KERNEL))

need_to_rebuild :

.PHONY : need_to_rebuild

