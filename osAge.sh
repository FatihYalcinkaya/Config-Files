#!/bin/bash

# / dizinindeki doğum tarihini al
install_date=$(stat / | awk '/Birth: /{print $2 " " substr($3,1,5)}')

# Kurulum tarihini Unix zaman damgasına çevir
install_epoch=$(date -d "$install_date" +%s)

# Mevcut tarihi Unix zaman damgasına çevir
current_epoch=$(date +%s)

# Kurulum tarihi ile bugünün tarihini karşılaştırarak gün sayısını hesapla
os_age=$(( (current_epoch - install_epoch) / 86400 ))

# Sonucu yazdır
echo "${os_age} Day"
