#!/bin/sh

power="/org/freedesktop/UPower/devices/line_power_AC"
battery="/org/freedesktop/UPower/devices/battery_BAT0"
charging=$(upower -i $power | awk '/online/ {print $2}')
pst="$(upower -i $battery | awk '/percentage/ {print substr($2, 1, length($2) - 1)}')"

if [ $charging == "yes" ]; then
  echo "<span>󰂄</span>"
elif (( $pst > 90 )); then
  echo "<span>󰁹</span>"
elif (( $pst > 80 )); then
  echo "<span>󰂂</span>"
elif (( $pst > 70)); then
  echo "<span>󰂁</span>"
elif (( $pst > 60)); then
  echo "<span>󰂀</span>"
elif (( $pst > 50)); then
  echo "<span>󰁿</span>"
elif (( $pst > 40)); then
  echo "<span>󰁾</span>"
elif (( $pst > 30)); then
  echo "<span>󰁽</span>"
elif (( $pst > 20)); then
  echo "<span>󰁼</span>"
elif (( $pst > 10)); then
  echo "<span color='#de6e4b'>󰁻</span>"
elif (( $pst > 0)); then
  echo "<span color='#de6e4b'>󰁺</span>"
fi
