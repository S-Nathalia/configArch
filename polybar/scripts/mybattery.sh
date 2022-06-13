#!/usr/bin/env bash

raw=$(acpi)
porcent=$(echo $raw | awk '{print $4}' | awk -F "%" '{print $1}')
# echo $porcent

status=$(echo $raw | awk '{print $3}' | awk -F "," '{print $1}')
# echo $status

# if [[ $status -ne "Full" ]]; then
#   status="discharging"
# else
#   status="jh\sfds"
# fi

final="$porcent% $status"
echo $final
