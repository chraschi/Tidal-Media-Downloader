#!/bin/sh
source $(git root)/tasks/env.sh
start_script
cdtasks

case "$1" in
    "win") ./build_win.sh
    ;;
    "osx") ./build_osx.sh
    ;;
    "linux") ./build_linux.sh
    ;;
    "all") ./build_linux.sh && tasks/build_osx.sh && tasks/build_win.sh
    ;;
    *) echo "--> Choose your target plattform to build the App for : " 
    select yn in 'win' 'osx' 'linux' 'all'; do
        case $yn in
            win ) ./build_win.sh; break;;
            osx ) ./build_osx.sh; break;;
            linux ) ./build_linux.sh; break;;
            all ) ./build_linux.sh && ./build_osx.sh && ./build_win.sh; break;;
        esac
    done
    ;; 
esac

end_script