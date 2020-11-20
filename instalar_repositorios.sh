#!/bin/bash
#########################################################
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

###################################################################################################
#toma el control al pulsar control + c
trap ctrl_c INT
function ctrl_c()
{
clear
if [ -f /tmp/repositorios.sh ]
then
    rm -r /tmp/repositorios.sh
    
else
    #continua por que el fichero esta borrado.
    echo ""
fi
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
exit
}

# funcion de repositorio añadido
function repositorio(){
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-                        Repositorio añadido                                                                                                  -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-                        Cuando termines de seleccionar                                                                                       -"
echo "-                        repositorios selecciona 90                                                                                           -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------" 
read -p "- Pulsa ENTER para continuar " pause
}

# comprueba que el fichero temporal este vacio /tmp/repositorios.sh
if [ -f /tmp/repositorios.sh ]
then
    rm -r /tmp/repositorios.sh
    
else
    #continua por que el fichero esta borrado.
    echo ""
fi


while :
do
clear
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "|                                                                                                                                             |"
echo "|                          ███████        ██    ██        ██   ██        ██         ██████         ███████        ██   ██                     |"
echo "|                          ██             ██    ██        ██  ██         ██        ██              ██              ██ ██                      |"
echo "|                          ███████        ██    ██        █████          ██        ██   ███        ███████          ███                       |"
echo "|                               ██        ██    ██        ██  ██         ██        ██    ██             ██         ██ ██                      |"
echo "|                          ███████         ██████         ██   ██        ██         ██████         ███████        ██   ██                     |"
echo "|                                                                                                                                             |"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde}  Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |${borra_colores}                          Para mejor visualizacion, presiona F11.     -"
echo -e "-${verde}                                   | www.reparaciondesistemas.com     |${borra_colores}                          Control + C -->> finalizar script.          -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde}                                              Nombre del script < instalar_repositorios.sh >${borra_colores}                                                 -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 1. Unity-Tweak-Tool, Para ubuntu, extras.   >>   sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily                           -"
echo "- 2. Opcion vacia                                                                                                                             -"
echo "- 3. Libre Office.                            >>   sudo add-apt-repository -y ppa:libreoffice/ppa                                             -"
echo "- 4. Tarjetas de video Nvidia.                >>   sudo add-apt-repository -y ppa:graphics-drivers/ppa                                        -"
echo "- 5. Ocamlfuse, para integrar google-drive.   >>   sudo add-apt-repository -y ppa:alessandro-strada/ppa                                       -"
echo "- 6, systemback.                              >>   sudo add-apt-repository -y deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main -"
echo "- 7. Google chrome stable                     >>   Pone automatico las key y el repositorio                                                   -"
echo "- 8. Virtualbox                               >>   Pone automatico las key y el repositorio                                                   -"
echo "- 9. Teamviewer                               >>   Pone automatico las key y el repositorio                                                   -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 70. Listar repositorios seleccionados.                                                                                                      -"
echo "- 80. Borrar los seleccionado.                                                                                                                -"
echo "- 90. Instalar los repositorios seleccionados.                                                                                                -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 99. Atras / Salir.                                                                                                                          -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -n "- Seleccione una opcion --->>> "
read opcion
case $opcion in
    1)  echo "sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily" >> /tmp/repositorios.sh;
        echo "" >> /tmp/repositorios.sh;
        repositorio;;

    #2)  echo "sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer" >> /tmp/repositorios.sh;
     #   echo "" >> /tmp/repositorios.sh;
      #  repositorio;;
        
    3)  echo "sudo add-apt-repository -y ppa:libreoffice/ppa" >> /tmp/repositorios.sh;
        echo "" >> /tmp/repositorios.sh;
        repositorio;;
        
    4)  clear
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- Direccion de enlace del tutorial                                                                                                            -";
        echo "- https://salmorejogeek.com/2016/12/11/como-instalar-los-drivers-nvidia-desde-el-ppa-proprietary-gpu-drivers-en-ubuntu-y-basadas/             -";
        echo "-                                                                                                                                             -";
        echo "- Si quieres copiar la direccion del enlace, sino pulsa Enter                                                                                 -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read pausa;
        echo "sudo add-apt-repository -y ppa:graphics-drivers/ppa" >> /tmp/repositorios.sh;
        echo "" >> /tmp/repositorios.sh;
        echo "";
        repositorio;;
        
    5)  echo "sudo add-apt-repository -y ppa:alessandro-strada/ppa" >> /tmp/repositorios.sh;
        echo "" >> /tmp/repositorios.sh;
        repositorio;;
    
    6)  echo "sudo add-apt-repository -y deb http://ppa.launchpad.net/nemh/systemback/ubuntu xenial main" >> /tmp/repositorios.sh;
        echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 382003C2C8B7B4AB813E915B14E4942973C62A1B" >> /tmp/repositorios.sh;
        echo "" >> /tmp/repositorios.sh;
        repositorio;;
        
    7)  echo "wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - " >> /tmp/repositorios.sh;
        echo 'sudo add-apt-repository "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main"' >> /tmp/reposit
        repositorio;;
        
    8)  echo "wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -" >> /tmp/repositorios.sh;
        echo "wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -" >> /tmp/repositorios.sh;
        echo 'sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"' >> /tmp/repositorios.sh;
        echo ""
        repositorio;;
        
    9)  echo "sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C5E224500C1289C0" >> /tmp/repositorios.sh;
        echo 'sudo add-apt-repository "deb http://linux.teamviewer.com/deb/ stable main"' >> /tmp/repositorios.sh;
        echo ""
        repositorio;;
        
    70) if [ -f /tmp/repositorios.sh ]
        then
            clear
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                 Lista de repositorios seleccionados                                                                                         -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            cat /tmp/repositorios.sh;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                 Pulsa una tecla para continuar                                                                                              -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read pausa;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                 Ningun repositorio seleccionado.                                                                                            -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
    
    80) echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "-                       Repositorios borrados                                                                                                 -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        rm -r /tmp/repositorios.sh;
        read pausa;;
    
    90) if [ -f /tmp/repositorios.sh ]
        then
            if [ -d /home/$(whoami)/.kde ]
            then
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo "-                     Instalando repositorios                                                                                                 -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                chmod +x /tmp/repositorios.sh;
                bash /tmp/repositorios.sh;
                rm -r /tmp/repositorios.sh;
                sudo pkcon update;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo "-                     Repositorios instalados                                                                                                 -";
                echo "-                     fichero temporal borrado y actualizado                                                                                  -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read pause;
            else
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo "-                     Instalando repositorios                                                                                                 -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                chmod +x /tmp/repositorios.sh;
                bash /tmp/repositorios.sh;
                rm -r /tmp/repositorios.sh;
                sudo apt update;
                sudo apt upgrade;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo "-                     Repositorios instalados                                                                                                 -";
                echo "-                     fichero temporal borrado y actualizado                                                                                  -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read -p "- Pulsa ENTER para continuar " pause;
            fi;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "-                     No se ha instalado ningun repositorio.                                                                                  -";
            echo "-                     Ningun repositorio seleccionado                                                                                         -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
            
     99) ctrl_c;;

*)  echo "";
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
    echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU.    Seleccion 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 a 99                                          ${borra_colores}              -";
    echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                      -";
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
    read pause;;
esac
done


