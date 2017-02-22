#!/bin/bash

# config starts at line 31

# colors
RESET="\x1b[0m"
BOLD="\x1b[1m"
ITALIC="\x1b[3m"
UNDERLINE="\x1b[4m"

FGBLACK="\x1b[30m"
FGRED="\x1b[31m"
FGGREEN="\x1b[32m"
FGYELLOW="\x1b[33m"
FGBLUE="\x1b[34m"
FGMAGENTA="\x1b=[35m"
FGCYAN="\x1b[36m"
FGWHITE="\x1b[37m"
FGDEFAULT="\x1b=[39m"

BGBLACK="\x1b[40m"
BGRED="\x1b[41m"
BGGREEN="\x1b[42m"
BGYELLOW="\x1b[43m"
BGBLUE="\x1b[44m"
BGMAGENTA="\x1b=[45m"
BGCYAN="\x1b[46m"
BGWHITE="\x1b[47m"
BGDEFAULT="\x1b=[49m"

# user config

OS='bunsen'
WM='wchf'
THEME='blue'
SHELL='zsh'

LOGO1="$FGBLUE     ╓▄▓       $RESET"
LOGO2="$FGBLUE   ▄██████▄    $RESET"
LOGO3="$FGBLUE ╓██████████▓  $RESET"
LOGO4="$FGBLUE ╙██ⁿ   \`█████ $RESET"
LOGO5="$FGBLUE  ╙U      ███▌ $RESET"
LOGO6="$FGBLUE         ║█▀\"  $RESET"

clear

echo -ne "
$LOGO1 ${BOLD}os$RESET        ${OS}
$LOGO2 ${BOLD}wm$RESET        ${WM}
$LOGO3 ${BOLD}shell$RESET     ${SHELL}
$LOGO4 ${BOLD}theme$RESET     ${THEME}
$LOGO5 ${BOLD}user$RESET      $(whoami)
$LOGO6 ${BOLD}term$RESET      $TERM
"

sleep 1

scrot -e 'mv $f ~/Pictures/screenshots'

