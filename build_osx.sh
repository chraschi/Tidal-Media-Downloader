rm -rf dist
rm -rf build 
rm -rf __init__.spec

cd TIDALDL-PY
rm -rf __init__.spec 
rm -rf dist
rm -rf build 
rm -rf exe
rm -rf MANIFEST.in
rm -rf *.egg-info

python setup.py sdist bdist_wheel
pyinstaller -F tidal_dl/__init__.py
mkdir bin
mv dist/__init__ bin/tidal-dl
chmod +x bin/tidal-dl

pip uninstall -y tidal-dl

cd ..