#!/bin/bash

# Mostrar el menú con wofi
option=$(echo -e "Reboot   \nPower Off  󰐥 \nLog Out  󰩈 " | wofi --dmenu --prompt "Selecciona una opción:" --width 20 --height	245 -g 300x100 -x 1640 -y 20 )

# Ejecutar la opción seleccionada
case $option in
    "Reboot  ")
        systemctl reboot
        ;;
    "Power Off 󰐥 ")
        systemctl poweroff
        ;;
    "Log Out 󰩈 ")
        bash kitty hyprctl dispatch exit
        ;;
    *)
        echo "Opcion No valida"
        ;;
esac
