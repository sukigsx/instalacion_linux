#!/bin/bash
#############################################
#forma de utilizar los colores en echo
#echo -e "${rojo}Estes es el texto en rojo.${borra_colores"
#colores
rojo="\e[0;31m\033[1m" #rojo
verde="\e[;32m\033[1m" 
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
rosa="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
borra_colores="\033[0m\e[0m" #borra colores

# funcion salida
trap ctrl_c INT
function ctrl_c()
{
clear
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-                                          ___                     _                                                                          -"
echo "-                                         / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                         -"
echo "-                                        | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                        -"
echo "-                                         \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                          -"
echo "-                                                                                   |_|                                                       -"
echo "-                            _   _   _     _   _   _                               _                     _          _                         -"
echo "-                           | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                       -"
echo "-                           | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                      -"
echo "-                            \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                      -"
echo "-                                                                                                           |_|                               -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
if [ -f /tmp/instalar_software.sh ]
then
    rm -r /tmp/instalar_software.sh
    
else
    #continua por que el fichero esta borrado.
    echo ""
fi
exit
}

################################################################3
# Empieza lo gordo
if [ -f /tmp/instalar_software.sh ]
then
    rm -r /tmp/instalar_software.sh
    
else
    #continua por que el fichero esta borrado.
    echo ""
fi
while :
do
clear
echo "----------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "|                                                                                                                                                        |"
echo "|                                ███████        ██    ██        ██   ██        ██         ██████         ███████        ██   ██                          |"
echo "|                                ██             ██    ██        ██  ██         ██        ██              ██              ██ ██                           |"
echo "|                                ███████        ██    ██        █████          ██        ██   ███        ███████          ███                            |"
echo "|                                     ██        ██    ██        ██  ██         ██        ██    ██             ██         ██ ██                           |"
echo "|                                ███████         ██████         ██   ██        ██         ██████         ███████        ██   ██                          |"
echo "|                                                                                                                                                        |"
echo "----------------------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde}  Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  | ${borra_colores}                                          Para mejor visualizacion, presiona F11.    -"
echo -e "-${verde}                                   | www.reparaciondesistemas.com     | ${borra_colores}                                          Control + C -->> finalizar script.         -"
echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde} Nombre del script.${borra_colores}                < instalar_software_incluido_en_los_repositorios.sh >                                                                     -"
echo -e "-${verde} Funcionamiento.${borra_colores}                   Seleccion de software para instalar en tu sistema.                                                                        -"
echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "-  1. Unity-Tweak-Tool, Perfecta para dejar Unity niquelado                    - 29. Terminal de gnome                                                        -"
echo "-  2. grub-customizer, modificar gestor de arranque                            - 30. Simple scan                                                              -"
echo "-  3. Libre Office                                                             - 31. Net-tools para tener comandos de red en terminal                         -"                     
echo "-  4. Gnome, entorno grafico                                                   - 32. Handbrake                                                                -"
echo "-  5. Gparted, poder partinionar los discos y unidades                         - 33. Shotwell, programa de fotos                                              -"
echo "-  6. Vlc, reporoductor                                                        - 34. Nemo, explorador de ficheros                                             -"  
echo "-  7. Cairo-Dock, como su nombre indica en un dock                             - 35. Github, instala el clonador para GitHub                                  -" 
echo "-  8. Virtualbox, sistema de virtualizacion, con repositorios oficiales        - 36. Systemback, Utilidades para gestionar el sistema                         -"
echo "-  9. Gufw, control de cortafuegos en modo grafico                             - 37. zenmap, escaner nmap y zenmap es el entorno grafico, se instalan los dos -"
echo "- 10. Gdebi, instalador de paquetes en modo grafico                            - 38. Copia de seguridad deja-dup                                              -"
echo "- 11. Synaptic, que decir, muy bueno                                           - 39. SSH servidor ssh                                                         -"
echo "- 12. Tellico, crea tu base de datos de musica,libros,dvd,etc                  - 40. Apache2 servidor apache                                                  -"
echo "- 13. Compizconfig-settings-manager, entorno grafico para el gestor compiz     - 41. FTP servidor ftp                                                         -"
echo "- 14. KdeConnect, sincroniza tu movil con el pc                                - 42. cifs-utils, para poder montar unidades con script monta.sh               -"
echo "- 15. Usuarios y Grupos entorno grafico entre otras utilidades                 - 43. Keepass2, Gestion de contraseñas                                         -"
echo "- 16. Solo instala gnome-online-accouns para drive de google                   - 44. Openvpn, conexion a una vpn                                              -"
echo "- 17. Screenfetch, informacion de sistema                                      - 45. Authy, sistemas de proteccion de cuentas                                 -"
echo "- 18. Chromium, Navegador web                                                  - 46. sshpass, poder pasar la clave al ssh                                     -"
echo "- 19. Integrar kio gdrive en linux, para entorno KDE                           - 47- Skanlite, software mejorado para escanear                                -"
echo "- 20. Gestor de particiones de KDE                                             - 48- Google chrome stable                                                     -"
echo "- 21. Disco de gnome, graba las iso y funciona en entorno KDE                  - 49. Teamviewer (completo), Control remoto                                    -"
echo "- 22. Brasero, para quemar cd y dvd                                            - 50. Teamviewer host, Control remoto                                          -"
echo "- 23. K3b, quemador de cd y dbd de KDE                                         - 51- Transmision, descarga de torrent                                         -"
echo "- 24. Steam, plataforma de juegos                                              - 52- Software-propietario, Gui gestionar ppa's, software propietario (video)  -"
echo "- 25. Spotify, plataforma de musica, Requiere Snap                             -                                                                              -"
echo "- 26. Digikam, editor de fotos de KDE                                          -                                                                              -"
echo "- 27. Snap, instalador de paquetes                                             -                                                                              -"
echo "- 28. Ocamlfuse, sincronizar google drive                                      -                                                                              -"
echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 60. Intalaciones software externo                                                                                                                           -"
echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 70. Listar el software seleccionado para instalar                                                                                                           -"
echo "- 80. BORRAR el software seleccionado para listalar                                                                                                           -"
echo "- 90- Instalar el software seleccionado                                                                                                                       -"
echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 99. Atras / Salir                                                                                                                                           -"
echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"
echo -n "- Seleccione una opcion del menu --->>> "
read opcion
case $opcion in
    1)  clear;
        echo "sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily" >> /tmp/instalar_software.sh;
        echo "sudo apt update" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y unity-tweak-tool" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    2)  clear;
        echo "sudo apt install -y grub-customizer" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;

    3)  clear;
        echo "sudo add-apt-repository -y ppa:libreoffice/ppa" >> /tmp/instalar_software.sh;
        echo "sudo apt update" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y libreoffice" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y libreoffice-l10n-es" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    4)  clear;
        echo "sudo apt install -y gnome" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    5)  clear;
        echo "sudo apt install -y gparted" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;

    6)  clear;
        echo "sudo apt install -y vlc" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    7)  clear;
        echo "sudo apt install -y cairo-dock" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    8)  clear;
        
        echo "wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -" >> /tmp/instalar_software.sh;
        echo "wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -" >> /tmp/instalar_software.sh;
        echo 'sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"' >> /tmp/instalar_software.sh;
        echo "sudo apt install -y virtualbox " >> /tmp/instalar_software.sh;
        echo "sudo apt install -y virtualbox-ext-pack " >> /tmp/instalar_software.sh;
        echo "sudo apt install -y virtualbox-guest-additions-iso " >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    9)  clear;
        
        echo "sudo apt install -y gufw" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    10) clear;
        
        echo "sudo apt install -y gdebi" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    11) clear;
        
        echo "sudo apt install -y synaptic" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y apt-xapian-index" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    12) clear;
        
        echo "sudo apt install -y tellico" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    13) clear;
        
        echo "sudo apt install -y compizconfig-settings-manager" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y compiz-plugins-extra" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    14) clear;
        
        echo "sudo apt install -y kdeconnect" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    15) clear;
        
        echo "sudo apt install -y gnome-system-tools" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    16) clear;
        
        echo "sudo apt install -y gnome-online-accounts" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    17) clear;
        
        echo "sudo apt install -y screenfetch" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    18) clear;
        
        echo "sudo apt install -y chromium-browser" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y chromium-browser-l10n" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    19) clear;
        
        echo "sudo apt install -y kio-gdrive" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    20) clear;
        
        echo "sudo apt install -y partitionmanager" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    21) clear;
        
        echo "sudo apt install -y gnome-disk-utility" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    22) clear;
        
        echo "sudo apt install -y brasero" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    23) clear;
        
        echo "sudo apt install -y k3b" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    24) clear;
        
        echo "sudo apt install -y steam-installer" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    25) clear;
        
        echo "sudo apt install -y snapd" >> /tmp/instalar_software.sh;
        echo "sudo snap install spotify" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    26) clear;
        
        echo "sudo apt install -y digikam" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    27) clear;
        
        echo "sudo apt install -y snapd" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    28) chmod 777 ocamlfuse.sh; 
        bash ocamlfuse.sh;;

    29) clear;
        
        echo "sudo apt install -y gnome-terminal" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    30) clear;
        
        echo "sudo apt install -y simple-scan" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    31) clear;
        
        echo "sudo apt install -y net-tools" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    32) clear;
        
        echo "sudo apt install -y handbrake" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    33) clear;
        
        echo "sudo apt install -y shotwell" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    34) clear;
        
        echo "sudo apt install -y nemo" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    35) clear;
        
        echo "sudo apt install -y git" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    36) clear;
        
        echo "sudo add-apt-repository -y deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main" >> /tmp/instalar_software.sh;
        echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 382003C2C8B7B4AB813E915B14E4942973C62A1B" >> /tmp/instalar_software.sh;
        echo "sudo apt update" >> /tmp/instalar_software.sh;
        echo "sudo apt install -y systemback" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    37) clear;
        
        echo "sudo apt install -y zenmap" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    38) clear;
        
        echo "sudo apt install -y deja-dup" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    39) clear;
        
        echo "sudo apt install -y ssh" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
    40) clear;
        
        echo "sudo apt install -y apache2" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
    41) clear;
        
        echo "sudo apt install -y vsftpd" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    42) clear;
        
        echo "sudo apt install -y cifs-utils" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    43) clear;
        
        echo "sudo apt install -y keepass2" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    44) clear;
        
        echo "sudo apt install -y openvpn" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    45) clear;
        
        echo "sudo snap install authy --beta" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    46) clear;
        
        echo "sudo apt install -y sshpass" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    47) clear;
        
        echo "sudo apt install -y skanlite" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
        
    48) clear;
        
        echo "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -" >> /tmp/instalar_software.sh;
        echo 'sudo add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"' >> /tmp/instalar_software.sh;
        echo "sudo apt install -y google-chrome-stable" >> /tmp/instalar_software.sh;
        echo "sudo rm /etc/apt/sources.list.d/google*" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
    49) clear;
        
        echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C5E224500C1289C0" >> /tmp/instalar_software.sh;
        echo 'sudo add-apt-repository "deb http://linux.teamviewer.com/deb/ stable main"' >> /tmp/instalar_software.sh;
        echo "sudo apt install -y teamviewer" >> /tmp/instalar_software.sh;
        echo "sudo rm /etc/apt/sources.list.d/team*" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
    50) clear;
        
        echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C5E224500C1289C0" >> /tmp/instalar_software.sh;
        echo 'sudo add-apt-repository "deb http://linux.teamviewer.com/deb/ stable main"' >> /tmp/instalar_software.sh;
        echo "sudo apt install -y teamviewer-host" >> /tmp/instalar_software.sh;
        echo "sudo rm /etc/apt/sources.list.d/team*" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
     51) clear;
        
        echo "sudo apt install -y transmission" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
    52) clear;
        
        echo "sudo apt install -y software-properties-gtk software-properties-qt" >> /tmp/instalar_software.sh;
        echo "" >> /tmp/instalar_software.sh;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                                 Software añadido                                                                            -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                            Cuando termines de seleccionar                                                                   -";
        echo "-                                                            el software selecciona 90                                                                        -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------"; 
        read -p "- Pulsa ENTER para continuar " pause;;
    
    60) chmod 777 instalacion_manual.sh; 
        bash instalar_software_no_incluido_en_los_repositorios.sh;;
    
    70) clear;
        if [ -f /tmp/instalar_software.sh ]
        then 
            cat /tmp/instalar_software.sh;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                                                           Pulsa una ENTER para continuar                                                    -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read pausa;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                                                Imposible mostar software, nada seleccionado                                                 -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
    80) clear;
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                           Software para instalar borrado                                                                    -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        rm -r /tmp/instalar_software.sh;
        read -p "- Pulsa ENTER para continuar " pause;;
        
    90) echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                                                           Instalando software seleccionado                                                                  -";
        echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
        if [ -f /tmp/instalar_software.sh ]
        then
            chmod +x /tmp/instalar_software.sh;
            bash /tmp/instalar_software.sh;
            rm -r /tmp/instalar_software.sh;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                                                            Software instalado                                                               -";
            echo "-                                                            y fichero temporal borrado                                                       -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                                                Imposible instalar software, nada seleccionado                                               -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
            
        
    99) # salida
        ctrl_c;;
        
   
*)  echo "";
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
    echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU.    Seleccion 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 a 99                                          ${borra_colores}                              -";
    echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                                      -";
    echo "---------------------------------------------------------------------------------------------------------------------------------------------------------------";
    read pause;;
esac
done
