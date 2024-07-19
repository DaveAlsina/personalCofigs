#!/bin/bash

# From comuting for geeks -> https://computingforgeeks.com/how-to-install-vivaldi-web-browser-on-fedora/
sudo dnf install dnf-utils -y
sudo dnf config-manager --add-repo https://repo.vivaldi.com/archive/vivaldi-fedora.repo
sudo dnf install vivaldi-stable

# From official brave doc
sudo dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser

