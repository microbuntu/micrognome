#!/bin/sh
set -xe
if [ ! -d "wld" ]; then
	git clone --depth=1 https://github.com/michaelforney/wld
fi
if [ ! -d "swc" ]; then
	git clone --depth=1 https://github.com/michaelforney/swc
fi
cd wld
make
sudo make install
cd ../swc
make
sudo make install
