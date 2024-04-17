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

# DMenu arayüzünü oluştur ve seçenekleri göster
selected_option=$(echo -e "Logout\nShutdown\nSuspend\nCancel" | dmenu -p "Choice:")

# Kullanıcının seçtiği seçeneği işle
case $selected_option in
    "Logout") logout ;;
    "Shutdown") poweroff ;;
    "Suspend") suspend ;;
    *) echo "Cancelled." ;;
esac