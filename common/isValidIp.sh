#!/bin/bash

function isValidIp() {
    local ip=$1
    local ret=1

    if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        ip=(${ip//\./ })
        [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
        ret=$?
    fi

    if [ $ret -eq 0 ]; then
        log INFO "The ip=$1 is valid."
    else
        echo_nok "The ip=$1 is not valid,pls input correct ip address~"
        return 1
    fi
}
