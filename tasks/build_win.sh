#!/bin/sh
cd "$(dirname "$0")"  
./cleanup.sh

echo "$( cd  "$(dirname "$0")/.." >/dev/null 2>&1 || exit ; pwd -P )"
exit
cd TIDALDL-PY

python3 setup.py sdist bdist_wheel
pyinstaller -F tidal_dl/__init__.py
mkdir exe
mv dist/__init__.exe exe/tidal-dl.exe

pip uninstall -y tidal-dl

cd ..