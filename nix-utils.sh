#!/bin/bash

echo "What do you want to do?"
echo -e "1]NixPkg Install\n2]NixPkg Uninstall\n3]Show Installed\n4]NixPkg Update\n5]NixPkg Search (slow)\n6]NixPkg Remove Old"

read option

case $option in

  1)
    echo "Enter package name:"
	read pkgname
	sudo nix-env -iA nixpkgs.$pkgname
    ;;

  2)
	echo "Enter package name:"
	read pkgname
    nix-env --uninstall $pkgname
    ;;

  3)
    nix-env --query --installed
    ;;
	
  4)
	nix-env -u --dry-run
	echo "Update all packages?(y/n)"
	read choice
	if [$choice == 'y']; then
		nix-channel --update
		nix-env -u
	fi
    ;;
	
  5)
	echo "Enter package name:"
	read pkgname
	nix-env -qaP --description $pkgname
    ;;
	
  6)
	nix-env --delete-generations old
	nix-collect-garbage -d
    ;;

  *)
    echo -e "Exiting.\n"
    ;;
esac