#!/bin/sh

BARS=$(amixer get Master | awk -F'[]%[]' '/%/ { if ( $7 == "off" ) { print "MM" } else { print int($2/10) } }' | head -n 1)

case $BARS in
  0)  BAR='[----------]' ;;
  1)  BAR='[+---------]' ;;
  2)  BAR='[++--------]' ;;
  3)  BAR='[+++-------]' ;;
  4)  BAR='[++++------]' ;;
  5)  BAR='[+++++-----]' ;;
  6)  BAR='[++++++----]' ;;
  7)  BAR='[+++++++---]' ;;
  8)  BAR='[++++++++--]' ;;
  9)  BAR='[+++++++++-]' ;;
  10) BAR='[++++++++++]' ;;
  *)  BAR='[---MUTE---]' ;;
esac

echo $BAR

exit 0
