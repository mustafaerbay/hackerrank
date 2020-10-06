function check_pass_complexity() {
    password=$1
    password_name=$2

    check=$(echo ${password} | grep -E "+[\$]")
    if [ ${#check} -ne 0 ]; then
        echo "[Error_check ${password_name}]  This password can not contain the '$' character, please check."
        return 1
    fi

}
