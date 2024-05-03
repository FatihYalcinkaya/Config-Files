#!/bin/bash

# DWM'yi oturumu kapatmak için kullan
logout() {
    pkill dwm
}

# Bilgisayarını kapatmak için kullan
poweroff() {
    systemctl poweroff
}

# Bilgisayarını uyku moduna almak için kullan
suspend() {
    systemctl suspend
}

# Kullanıcıya seçenekleri göster
show_options() {
    echo "1. Logout"
    echo "2. Shutdown"
    echo "3. Suspend"
    echo "4. Cancel"
}

# Kullanıcıdan seçenek iste ve ilgili işlemi gerçekleştir
read_option() {
    read -p "Choice " choice
    case $choice in
        1) logout ;;
        2) poweroff ;;
        3) suspend ;;
        4) echo "Cancelled." ;;
        *) echo "Invalid!" ;;
    esac
}

# Ana işlev
main() {
    show_options
    read_option
}

# Ana işlevi çağır
main
