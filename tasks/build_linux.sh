#!/bin/sh
cd "$(dirname "$0")" && ./cleanup.sh
cd "$(dirname "$0")/../TIDALDL-PY" 

python3 setup.py sdist bdist_wheel
pyinstaller -F tidal_dl/__init__.py
mkdir bin
mv dist/__init__ bin/tidal-dl
chmod +x bin/tidal-dl

pip uninstall -y tidal-dl

cd ..