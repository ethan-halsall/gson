LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# optional step to automate some pre-compilation steps for this library
# run `mvn generate-sources` before we compile
$(info $(shell (mvn generate-sources -f $(LOCAL_PATH)/pom.xml)))

LOCAL_MODULE := gson

LOCAL_SRC_FILES := $(call all-java-files-under, src/main)
LOCAL_SRC_FILES += $(call all-java-files-under, target/generated-sources)

# required (tell the build system what kind of thing we are building)
include $(BUILD_JAVA_LIBRARY)