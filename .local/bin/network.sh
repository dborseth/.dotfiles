#!/bin/sh

eth_device=$(nmcli d status | grep ethernet | awk '{print $1}')
eth_status=$(nmcli d status | grep ethernet | awk '{print $3}')

wifi_device=$(nmcli d status | grep wifi | awk '{print $1}')
wifi_status=$(nmcli d status | grep wifi | awk '{print $3}')

if [[ -n "$eth_device" && "$eth_status" == "connected" ]]; then
  echo "<span>󰌘</span>"
elif [[ -n "$wifi_device" && "$wifi_status" == "connected" ]]; then
  echo "<span>󰖩</span>"
elif [[ -z "$wifi_device" && -n "$eth_device" && "$eth_status" == "disconnected" ]]; then
  echo "<span color='#de6e4b'>󰌙</span>"
elif [[ -z "$eth_device" && -n "$wifi_device" && "$wifi_status" == "disconnected" ]]; then
  echo "<span color='#de6e4b'>󰖪</span>"
fi

