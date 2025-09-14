#!/data/data/com.termux/files/usr/bin/bash

mkdir -p ~/.termux/fonts
mkdir -p ~/.termux

curl -L -o ~/.termux/fonts/FiraCode-Regular.ttf https://github.com/tonsky/FiraCode/raw/master/distr/ttf/FiraCode-Regular.ttf

cat > ~/.termux/colors.properties << EOL
background: #1e1e1e
foreground: #d4d4d4
cursor:     #ffffff

color0: #000000
color1: #f44747
color2: #608b4e
color3: #dcdcaa
color4: #9cdcfe
color5: #c586c0
color6: #4ec9b0
color7: #d4d4d4
color8: #808080
color9: #d16969
color10: #b5cea8
color11: #f0e68c
color12: #9cdcfe
color13: #d7aefb
color14: #4ec9b0
color15: #ffffff
EOL

echo "font: FiraCode-Regular.ttf" > ~/.termux/termux.properties

cat > ~/.termux/bashrc << 'EOL'
echo -e "\e[36m===================================="
echo -e "\e[35m    Welcome to Termux, akhakamh!   "
echo -e "\e[36m====================================\e[0m"

PS1="\[\e[34m\]\u@\h \[\e[37m\]\w \$\[\e[0m\] "
EOL

termux-reload-settings