#!/bin/sh

cd "$(dirname "$0")/../TIDALDL-PY"
twine upload dist/*

cd ..