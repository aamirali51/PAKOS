#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="ArchPK"
iso_label="ArchPK$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="DemonKiller <https://demonkiller.in>"
iso_application="ArchPK Live/Rescue CD"
iso_version="$(date +%Y.%m)"
install_dir="arch"
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-ia32.grub.esp' 'uefi-x64.grub.esp' 'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
#airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-comp' 'zstd' '-Xcompression-level' '3')

file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/ArchPK-remove-nvidia"]="0:0:755"
  ["/usr/local/bin/ArchPK-preset"]="0:0:755"
  ["/usr/local/bin/ArchPK-finalisation"]="0:0:755"
  ["/usr/local/bin/cleanup_welcome_app"]="0:0:755"
)
