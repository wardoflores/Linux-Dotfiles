#!/bin/zsh
# This Bourne Schell script file uses the following encoding: utf-8
# menu func
# Linux-Dotfiles: https://github.com/wardoflores/Linux-Dotfiles/tree/main
# Created 2021-10-07
# Copyright (c) 2023 wardoflores
#
mainmenu() {
    echo -ne "
MAIN MENU
1) CMD1
0) Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        submenu
        mainmenu
        ;;
    0)
        echo "Bye bye."
        exit 0
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}

submenu() {
    echo -ne "
SUBMENU
1) SUBCMD1
2) Go Back to Main Menu
0) Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        subsubmenu
        submenu
        ;;
    2)
        menu
        ;;
    0)
        echo "Bye bye."
        exit 0
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}

subsubmenu() {
    echo -ne "
subsubmenu
1) GOOD MORNING
2) GOOD AFTERNOON
3) Go Back to SUBMENU
4) Go Back to MAIN MENU
0) Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        fn_goodmorning
        subsubmenu
        ;;
    2)
        fn_goodafternoon
        subsubmenu
        ;;
    3)
        submenu
        ;;
    4)
        mainmenu
        ;;
    0)
        echo "Bye bye."
        exit 0
        ;;
    *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}

#mainmenu

### Colors ##
ESC=$(printf '\033') RESET="${ESC}[0m" BLACK="${ESC}[30m" RED="${ESC}[31m"
GREEN="${ESC}[32m" YELLOW="${ESC}[33m" BLUE="${ESC}[34m" MAGENTA="${ESC}[35m"
CYAN="${ESC}[36m" WHITE="${ESC}[37m" DEFAULT="${ESC}[39m"

### Color Functions ##

greenprint() { printf "${GREEN}%s${RESET}\n" "$1"; }
blueprint() { printf "${BLUE}%s${RESET}\n" "$1"; }
redprint() { printf "${RED}%s${RESET}\n" "$1"; }
yellowprint() { printf "${YELLOW}%s${RESET}\n" "$1"; }
magentaprint() { printf "${MAGENTA}%s${RESET}\n" "$1"; }
cyanprint() { printf "${CYAN}%s${RESET}\n" "$1"; }
fn_goodafternoon() { echo; echo "Good afternoon."; }
fn_goodmorning() { echo; echo "Good morning."; }
fn_bye() { echo "Bye bye."; exit 0; }
fn_fail() { echo "Wrong option." exit 1; }

subsubmenu() {
    echo -ne "
$(yellowprint 'subsubmenu')
$(greenprint '1)') GOOD MORNING
$(greenprint '2)') GOOD AFTERNOON
$(blueprint '3)') Go Back to SUBMENU
$(magentaprint '4)') Go Back to MAIN MENU
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        fn_goodmorning
        subsubmenu
        ;;
    2)
        fn_goodafternoon
        subsubmenu
        ;;
    3)
        submenu
        ;;
    4)
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

submenu() {
    echo -ne "
$(blueprint 'CMD1 SUBMENU')
$(greenprint '1)') SUBCMD1
$(magentaprint '2)') Go Back to Main Menu
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        subsubmenu
        submenu
        ;;
    2)
        menu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

mainmenu() {
    echo -ne "
$(magentaprint 'MAIN MENU')
$(greenprint '1)') CMD1
$(redprint '0)') Exit
Choose an option:  "
    read -r ans
    case $ans in
    1)
        submenu
        mainmenu
        ;;
    0)
        fn_bye
        ;;
    *)
        fn_fail
        ;;
    esac
}

mainmenu