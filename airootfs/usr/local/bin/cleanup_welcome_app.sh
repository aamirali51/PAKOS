#!/bin/bash
# Cleanup script to remove the TTH-Welcome app after installation

# Remove the welcome app binaries
rm -f /usr/local/bin/welcome.py

# Remove the .desktop files
rm -f /usr/share/applications/welcome.desktop
rm -f /etc/xdg/autostart/welcome.desktop
rm -f /etc/skel/.config/autostart/welcome.desktop
