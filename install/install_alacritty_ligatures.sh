#!/bin/bash

# (the branch is unmantained since 2021)
#
# commands to alacritty ligatures
sudo apt install cargo

# clone the repo
git clone https://github.com/zenixls2/alacritty

# build the ligature
cd alacritty
git checkout ligature
cargo build --release

#install binary

# backup the existing binary
sudo mv /usr/bin/alacritty /usr/bin/alacritty.bak

# copy build binary to the /usr/bin folder
sudo cp ./target/release/alacritty /usr/bin
