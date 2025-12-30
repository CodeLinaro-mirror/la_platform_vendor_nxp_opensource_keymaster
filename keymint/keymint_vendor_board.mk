#pineapple specific build rules
ifeq ($(TARGET_BOARD_PLATFORM),pineapple)
TARGET_USES_ESE_KEYMINT := false
TARGET_USES_ESE_AUTHSECRET := false
ENABLE_ESE_KEYMINT_SPLIT_MANIFEST := false
ENABLE_ESE_KEYMINT_FEATURE_XML := false
endif

#sun specific build rules
ifeq ($(TARGET_BOARD_PLATFORM),sun)
TARGET_USES_ESE_KEYMINT := false
TARGET_USES_ESE_AUTHSECRET := false
ENABLE_ESE_KEYMINT_SPLIT_MANIFEST := false
ENABLE_ESE_KEYMINT_FEATURE_XML := false
endif

#canoe and alor specific build rules
#enable for alor by default. alor uses same lunch command
ifeq ($(TARGET_BOARD_PLATFORM),canoe)
TARGET_USES_ESE_KEYMINT := true
TARGET_USES_ESE_AUTHSECRET := false
ENABLE_ESE_KEYMINT_SPLIT_MANIFEST := false
ENABLE_ESE_KEYMINT_FEATURE_XML := false
endif

#malabar specific build rules
ifeq ($(TARGET_BOARD_PLATFORM),malabar)
TARGET_USES_ESE_KEYMINT := true
TARGET_USES_ESE_AUTHSECRET := false
ENABLE_ESE_KEYMINT_SPLIT_MANIFEST := false
ENABLE_ESE_KEYMINT_FEATURE_XML := false
endif

#chora specific build rules
ifeq ($(TARGET_BOARD_PLATFORM),chora)
TARGET_USES_ESE_KEYMINT := true
TARGET_USES_ESE_AUTHSECRET := false
ENABLE_ESE_KEYMINT_SPLIT_MANIFEST := false
ENABLE_ESE_KEYMINT_FEATURE_XML := false
endif