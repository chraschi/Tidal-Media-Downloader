#!/bin/sh
source $(git root)/environment

start_script
cleanup
cdsrc

python3 setup.py sdist bdist_wheel
pyinstaller -F tidal_dl/__init__.py
mkdir exe
mv dist/__init__.exe exe/tidal-dl.exe

pip uninstall -y tidal-dl

end_script