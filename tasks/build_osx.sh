#!/bin/sh
source $(git root)/environment
start_script
cleanup
cdsrc

python3 setup.osx.py py2app -A
cd ./dist/tidal-dl.app/Contents/MacOS 
mv ./tidal-dl-launcher ./tidal-dl
printf '#!/bin/sh\ncd "$(dirname "$0")" && ./tidal-dl --gui' >> ./tidal-dl-launcher
chmod +x ./tidal-dl-launcher
echo "--- Build completed ---"
pip uninstall -y tidal-dl

end_script