#pineapple specific build rules
ifeq ($(TARGET_BOARD_PLATFORM),pineapple)
TARGET_USES_ESE_WEAVER := false
ENABLE_ESE_WEAVER_SPLIT_MANIFEST := false
endif

#sun specific build rules
ifeq ($(TARGET_BOARD_PLATFORM),sun)
TARGET_USES_ESE_WEAVER := false
ENABLE_ESE_WEAVER_SPLIT_MANIFEST := false
endif

#canoe and alor specific build rules
#enable for alor by default. alor uses same lunch command
ifeq ($(TARGET_BOARD_PLATFORM),canoe)
TARGET_USES_ESE_WEAVER := true
ENABLE_ESE_WEAVER_SPLIT_MANIFEST := false
endif
