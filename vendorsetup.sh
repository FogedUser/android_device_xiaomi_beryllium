rm -rf device/xiaomi/sdm845-common

# Vendor Tree
rm -rf vendor/xiaomi/beryllium
rm -rf vendor/xiaomi/sdm845-common
git clone https://github.com/FogedUser/android_vendor_xiaomi_beryllium.git -b bka vendor/xiaomi/beryllium --depth=1

# Kernel Tree
rm -rf kernel/xiaomi/sdm845
git clone https://github.com/PocoF1-Resources/android_kernel_xiaomi_sdm845_419.git -b 16.2 kernel/xiaomi/sdm845 --depth=1

# Hardware
rm -rf hardware/xiaomi
git clone https://github.com/AxionAOSP-devices/android_hardware_xiaomi.git -b lineage-23.2 hardware/xiaomi

# Patches for Kernel 4.19
# Hals
rm -rf hardware/qcom-caf/sm8250/display
rm -rf hardware/qcom-caf/sm8250/media
rm -rf hardware/qcom-caf/sm8250/audio
git clone https://github.com/duckyduckG/android_hardware_qcom_media.git -b lineage-23.1-caf-sm8150 hardware/qcom-caf/sm8250/media
git clone https://github.com/duckyduckG/android_hardware_qcom_audio.git -b lineage-23.2-caf-sm8250 hardware/qcom-caf/sm8250/audio
git clone https://github.com/duckyduckG/android_hardware_qcom_display.git -b lineage-23.2-caf-sm8250 hardware/qcom-caf/sm8250/display

# remove sepolicy
rm -rf device/qcom/sepolicy_vndr/legacy-um
# common
rm -rf hardware/qcom-caf/common

# Sepolicy
git clone https://github.com/duckyduckG/android_device_qcom_sepolicy_vndr.git -b lineage-23.2-legacy-um device/qcom/sepolicy_vndr/legacy-um

# qcom-caf_common
git clone https://github.com/duckyduckG/android_hardware_qcom-caf_common.git -b lineage-23.2 hardware/qcom-caf/common
