#!/bin/bash

set -e

source ~/code/env/bin/activate
pip uninstall matplotlib
cd /opt/X11/include/libpng15
sudo mv png.h _png.h && sudo mv pngconf.h _pngconf.h && sudo mv pnglibconf.h _pnglibconf.h
pip install matplotlib
sudo mv _png.h png.h && sudo mv _pngconf.h pngconf.h && sudo mv _pnglibconf.h pnglibconf.h
