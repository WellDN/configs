#!/bin/bash

# (the branch is unmantained since 2021)
#
# commands to alacritty ligatures
sudo apt install cargo

# clone the repo
git clone https://github.com/zenixls2/alacritty

# Download fonts from git, pass the font globally
git clone https://github.com/WellDN/configs/tree/main/fonts
cd ~/.config
cp -R .config/configs/fonts/* /usr/share/fonts

# build the ligature
cd alacritty
git checkout ligature
cargo build --release

#install binary
# backup the existing binary
sudo mv /usr/bin/alacritty /usr/bin/alacritty.bak

# copy build binary to the /usr/bin folder
sudo cp ./target/release/alacritty /usr/bin

# Auto-completion
sudo apt install gawk
git clone --recursive https://github.com/akinomyoga/ble.sh.git
make -C ble.sh
source ble.sh/out/ble.sh
