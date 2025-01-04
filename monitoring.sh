#!/bin/bash

# Tmux oturumu için bir isim belirle
SESSION_NAME="monitoring"

# Eğer oturum zaten mevcutsa, oturuma bağlan
if tmux has-session -t $SESSION_NAME 2>/dev/null; then
  st -e tmux attach-session -t $SESSION_NAME
  exit 0
fi

# Yeni bir tmux oturumu oluştur ve hemen bir komut başlatma
tmux new-session -d -s $SESSION_NAME

# Sağ tarafa bir pencere böl
tmux split-window -h -t $SESSION_NAME

# Sol panelde htop çalıştır
tmux send-keys -t ${SESSION_NAME}:0.0 'htop' C-m

# Sağ panelde peaclock çalıştır
tmux send-keys -t ${SESSION_NAME}:0.1 'peaclock' C-m

# Varsayılan tmux oturumunu st terminalinde çalıştır
st -e tmux attach-session -t $SESSION_NAME
