# Build Keymaster open source vendor modules
ifeq ($(strip $(TARGET_USES_ESE_AUTHSECRET)),true)
PRODUCT_PACKAGES += android.hardware.authsecret-service.nxp-qti
endif

ifeq ($(strip $(TARGET_USES_ESE_KEYMINT)),true)
PRODUCT_PACKAGES += android.hardware.security.keymint4-service.strongbox-nxp-qti
endif

ifeq ($(strip $(ENABLE_ESE_KEYMINT_SPLIT_MANIFEST)),true)
  ifeq ($(strip $(TARGET_USES_ESE_KEYMINT)),true)
  PRODUCT_PACKAGES += android.hardware.security.keymint4-service.strongbox_nxp.xml
  PRODUCT_PACKAGES += android.hardware.security.sharedsecret-service.strongbox4_nxp.xml
  endif

  ifeq ($(strip $(TARGET_USES_ESE_AUTHSECRET)),true)
  PRODUCT_PACKAGES += android.hardware.authsecret-service.nxp.xml
  endif
endif

ifeq ($(strip $(ENABLE_ESE_KEYMINT_FEATURE_XML)),true)
PRODUCT_COPY_FILES += vendor/nxp/opensource/keymaster/keymint/KM_Common/android.hardware.hardware_keystore.jc-strongbox-keymint4_nxp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.strongbox_keystore.xml
endif
