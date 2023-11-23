function HOSTNAME {
    host_str=`hostname`
    echo -en "${color_first_back}${color_first_font}HOSTNAME${clear_color} = ${color_second_back}${color_second_font}$host_str${clear_color}\n"
}

function TIMEZONE {
    timezone_str=`timedatectl | awk '/Time zone:/{print $3, $4, $5}'`
    echo -en "${color_first_back}${color_first_font}TIMEZONE${clear_color} = ${color_second_back}${color_second_font}$timezone_str${clear_color}\n"
}

function USER {
    user_str=`whoami`
    echo -en "${color_first_back}${color_first_font}USER${clear_color} = ${color_second_back}${color_second_font}$user_str${clear_color}\n"
}

function OS {
    os_str=`lsb_release -d | awk '/Description/{print $2, $3, $4}'`
    echo -en "${color_first_back}${color_first_font}OS${clear_color} = ${color_second_back}${color_second_font}$os_str${clear_color}\n"
}

function DATE {
    date_str=`date +"%d %B %Y %H:%M:%S"`
    echo -en "${color_first_back}${color_first_font}DATE${clear_color} = ${color_second_back}${color_second_font}$date_str${clear_color}\n"
}

function UPTIME {
    uptime_str=`uptime | grep -oP 'up\s*\K[^,]*'`
    echo -en "${color_first_back}${color_first_font}UPTIME${clear_color} = ${color_second_back}${color_second_font}$uptime_str${clear_color}\n"
}

function UPTIME_SEC {
    uptime_sec_str=`cat /proc/uptime | awk '{print $1}'`
    echo -en "${color_first_back}${color_first_font}UPTIME_SEC${clear_color} = ${color_second_back}${color_second_font}$uptime_sec_str  sec.${clear_color}\n"
}

function IP {
    ip_str=`ip a | grep -oP 'inet \s*\K[^/]*' | tail -n 1`
    echo -en "${color_first_back}${color_first_font}IP${clear_color} = ${color_second_back}${color_second_font}$ip_str${clear_color}\n"
}

# Нужен net-tools установленный (для ifconfig)
function MASK {
    mask_str=`ifconfig | grep 'netmask' -m 1 | awk '{print $4}'`
    echo -en "${color_first_back}${color_first_font}MASK${clear_color} = ${color_second_back}${color_second_font}$mask_str${clear_color}\n"
}

function GATEWAY {
    gateway_str=`ip r | grep -oP 'default via \s*\K[^dev]*'`
    echo -en "${color_first_back}${color_first_font}GATEWAY${clear_color} = ${color_second_back}${color_second_font}$gateway_str${clear_color}\n"
}

function RAM_TOTAL {
    ram_total_str=`free -m | awk 'NR==2{printf "%.3lf", $2 / 1000 }'`
    echo -en "${color_first_back}${color_first_font}RAM_TOTAL${clear_color} = ${color_second_back}${color_second_font}$ram_total_str  GB${clear_color}\n"
}

function RAM_USED {
    ram_used_str=`free -m | awk 'NR==2{printf "%.3lf", $3 / 1000 }'`
    echo -en "${color_first_back}${color_first_font}RAM_USED${clear_color} = ${color_second_back}${color_second_font}$ram_used_str  GB${clear_color}\n"
}

function RAM_FREE {
    ram_free_str=`free -m | awk 'NR==2{printf "%.3lf", $4 / 1000 }'`
    echo -en "${color_first_back}${color_first_font}RAM_FREE${clear_color} = ${color_second_back}${color_second_font}$ram_free_str  GB${clear_color}\n"
}

function SPACE_ROOT {
    space_root_str=`df -k / | awk 'NR==2{printf "%.2f", $2 / 1000}'`
    echo -en "${color_first_back}${color_first_font}SPACE_ROOT${clear_color} = ${color_second_back}${color_second_font}$space_root_str  MB${clear_color}\n"
}

function SPACE_ROOT_USED {
    space_root_used_str=`df -k / | awk 'NR==2{printf "%.2f", $3 / 1000}'`
    echo -en "${color_first_back}${color_first_font}SPACE_ROOT_USED${clear_color} = ${color_second_back}${color_second_font}$space_root_used_str  MB${clear_color}\n"
}

function SPACE_ROOT_FREE {
    space_root_free_str=`df -k / | awk 'NR==2{printf "%.2f", $4 / 1000}'`
    echo -en "${color_first_back}${color_first_font}SPACE_ROOT_FREE${clear_color} = ${color_second_back}${color_second_font}$space_root_free_str  MB${clear_color}\n"
}