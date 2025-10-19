
#
# OrangeFox Recovery Project
# 

# Use hardware keys for navigation in OrangeFox
OF_USE_HW_GUI := true
OF_PROMPT_FOR_HW_GUI := true
OF_HW_GUI_KEY_UP := KEY_VOLUMEUP
OF_HW_GUI_KEY_DOWN := KEY_VOLUMEDOWN
OF_HW_GUI_KEY_SELECT := KEY_POWER

# Enable ADB in recovery for shell access
OF_ENABLE_ADB_RECOVERY := true
FOX_USE_BASH_SHELL := true

# vendorsetup
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_gta9wifi-eng