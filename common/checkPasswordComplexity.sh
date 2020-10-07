function check_pass_complexity() {
    which=$1
    password=$2
    password_name=$3


    #check=$(echo ${password} | grep -E "+[\a]")
    check=$(echo ${password} | grep -E "$which")
    if [ ${#check} -ne 0 ]; then
        echo "[Error_check ${password_name}]  This password can not contain the '"$which"' character, please check."
        return 1
    fi

}
