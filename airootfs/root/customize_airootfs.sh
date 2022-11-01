

systemctl set-default graphical.target

systemctl enable sddm.service

useradd -m -g users -G adm,audio,disk,floppy,log,network,optical,rfkill,storage,video,wheel,sys -s /bin/bash liveuser



passwd -d liveuser


