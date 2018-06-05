#!/bin/bash
#setup PWD DTR Vars

export DTR_URL="https://ip$(curl -sS https://${PWD_HOST_FQDN}/sessions/${SESSION_ID} | jq -r '.instances[] | select(.hostname == "worker1") | .routable_ip'|sed 's/\./-/g')-${SESSION_ID}.direct.${PWD_HOST_FQDN}"

export DTR_USERNAME=admin
