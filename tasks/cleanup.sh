#!/bin/sh
source $(git root)/tasks/env.sh
start_script
cdroot
rm -rfv dist
rm -rfv build/ 
rm -rfv __init__.spec
cdproject
rm -rfv tidal_dl/__pycache__
rm -rfv tidal_dl/lang/__pycache__
rm -rfv __init__.spec 
rm -rfv dist
rm -rfv build 
rm -rfv exe
rm -rfv bin
rm -rfv app
rm -rfv .egg
rm -rfv MANIFEST.in
rm -rfv *.egg-info
end_script