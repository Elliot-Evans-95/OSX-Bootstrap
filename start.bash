#!/usr/bin/env bash

set -e

OSX_BOOTSTRAP=${OSX_BOOTSTRAP:-"$HOME/OSX-Bootstrap"}

if [ ! -d "$OSX_BOOTSTRAP" ]
then
  git clone --depth=1 -b master https://github.com/elliot-evans-95/osx-bootstrap.git "$HOME/OSX-Bootstrap"
fi

title="OSX Bootstrap"
prompt="What Machine are you Bootstrapping:"
options=("Laptop" "Desktop")

echo "$title"
PS3="$prompt"
select opt in "${options[@]}" "Quit"; do

    case "$REPLY" in

    1 ) echo "You picked $opt which is option $REPLY"
        bash "$OSX_BOOTSTRAP/Laptop_Bootstrap/setup.bash";;
    2 ) echo "You picked $opt which is option $REPLY"
        bash "$OSX_BOOTSTRAP/Desktop_Bootstrap/setup.bash";;

    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
