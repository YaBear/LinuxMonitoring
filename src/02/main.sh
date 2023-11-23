#!/bin/bash

. ./functions.sh

date_start=`date +"%d_%m_%Y_%H_%M_%S"`

HOSTNAME
TIMEZONE
USER
OS
DATE
UPTIME
UPTIME_SEC
IP
MASK
GATEWAY
RAM_TOTAL
RAM_USED
RAM_FREE
SPACE_ROOT
SPACE_ROOT_USED
SPACE_ROOT_FREE

echo "Записать данные в файл? Y/N"
read answer

if [[ $answer = Y || $answer = y ]]; then
    echo -e "HOSTNAME = $host_str\nTIMEZONE = $timezone_str\nUSER = $user_str\nOS = $os_str\nDATE = $date_str\nUPTIME = $uptime_str\nUPTIME_SEC = $uptime_sec_str sec.\nIP = $ip_str\nMASK = $mask_str\nGATEWAY = $gateway_str\nRAM_TOTAL = $ram_total_str GB\nRAM_USED = $ram_used_str GB\nRAM_FREE = $ram_free_str GB\nSPACE_ROOT = $space_root_str MB\nSPACE_ROOT_USED = $space_root_used_str MB\nSPACE_ROOT_FREE = $space_root_free_str MB" > "${date_start}.status"
fi