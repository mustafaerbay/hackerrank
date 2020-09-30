#!/bin/bash

function echo_ok() {
    echo -e "\033[32m"$1"\033[0m"
}

function echo_nok() {
    echo -e "\033[31m"$1"\033[0m"
}

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

function spin_wait() {
    STEP_INFO="$1"
    local -i pid=0
    if [ -z "$2" ]; then
        pid=$!
    else
        pid=$2
    fi
    local -i placeholder_num=73
    printf "%-${placeholder_num}s [ %s ]\r" "${STEP_INFO}" "$BLANK"
    while ps | grep -w $pid >/dev/null 2>&1; do
        for X in '-' '\' '|' '/'; do
            printf "%-${placeholder_num}s [ %s ]\r" "${STEP_INFO}" "${X}"
            sleep 0.3
        done
    done
    wait $pid
    local ret=$?
    if [ $ret -ne 0 ]; then
        printf "%-${placeholder_num}s [\033[31;1m%s\e[m]\r" "${STEP_INFO}" "fail"
    else
        printf "%-${placeholder_num}s [\033[32;1m%s\e[m]\r" "${STEP_INFO}" "done"
    fi
    echo
    return $ret
}
