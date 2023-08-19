#!/bin/sh

volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}' | cut -c3-)
status=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $3}')

if [ $status == '[MUTED]' ]; then
  echo "<span color='#de6e4b'>󰖁</span>"
elif (( $volume > 70 )); then
  echo "<span>󰕾</span>"
elif (( $volume > 30 )); then
  echo "<span>󰖀</span>"
elif [ $volume -ge 0 ]; then
  echo "<span>󰕿</span>"
fi
