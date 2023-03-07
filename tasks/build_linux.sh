#!/bin/sh
source $(git root)/tasks/env.sh
start_script
cleanup
cdproject

python3 setup.py sdist bdist_wheel
pyinstaller -F tidal_dl/__init__.py
mkdir bin
mv dist/__init__ bin/tidal-dl
chmod +x bin/tidal-dl

pip uninstall -y tidal-dl

end_script