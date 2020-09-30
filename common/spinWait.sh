#!/bin/bash

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
