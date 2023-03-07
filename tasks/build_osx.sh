#!/bin/sh
cd "$(dirname "$0")" && ./cleanup.sh
cd "$(dirname "$0")/../TIDALDL-PY" 

python3 setup.osx.py py2app
cd dist/tidal-dl.app/Contents/MacOS 
mv ./tidal-dl-launcher ./tidal-dl
printf '#!/bin/sh\ncd "$(dirname "$0")" && ./tidal-dl --gui' >> ./tidal-dl-launcher
chmod +x ./tidal-dl-launcher
echo "--- Build completed ---"
pip uninstall -y tidal-dl

cd "$(dirname "$0")/../TIDALDL-PY" 