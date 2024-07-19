#!/bin/bash

# Install VSCode
# https://itsfoss.com/install-vs-code-fedora/
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code

# Install Github Desktop
# https://linuxcapable.com/how-to-install-github-desktop-on-fedora-linux/
sudo sh -c 'echo -e "[shiftkey-packages]\nname=GitHub Desktop\nbaseurl=https://rpm.packages.shiftkey.dev/rpm/\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=https://rpm.packages.shiftkey.dev/gpg.key" > /etc/yum.repos.d/shiftkey-packages.repo'
sudo rpm --import https://rpm.packages.shiftkey.dev/gpg.key
sudo dnf install github-desktop

# Install Docker
# https://docs.docker.com/engine/install/fedora/
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Install Docker Compose
# https://developer.fedoraproject.org/tools/docker/compose.html
sudo dnf install docker-compose

# Install Docker Desktop
# https://docs.docker.com/desktop/install/fedora/
sudo dnf install gnome-terminal
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-x86_64.rpm
sudo dnf install ./docker-desktop-x86_64.rpm
rm ./docker-desktop-x86_64.rpm
