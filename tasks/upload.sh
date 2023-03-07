#!/bin/sh
source $(git root)/environment

start_script
cdsrc
twine upload dist/*

end_script