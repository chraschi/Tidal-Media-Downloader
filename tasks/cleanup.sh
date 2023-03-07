#!/bin/sh
cd "$(dirname "$0")"
cd ..
rm -rf dist
rm -rf build/ 
rm -rf __init__.spec
echo "ERSTER TEIL GELöscht"
cd TIDALDL-PY
rm -rf tidal_dl/__pycache__
rm -rf tidal_dl/lang/__pycache__
rm -rf __init__.spec 
rm -rf dist
rm -rf build 
rm -rf exe
rm -rf bin
rm -rf app
rm -rf .egg
rm -rf MANIFEST.in
rm -rf *.egg-info
echo "ZWEITER TEIL GELöscht"
cd ..