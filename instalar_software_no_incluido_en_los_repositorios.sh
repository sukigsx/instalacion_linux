#!/bin/bash
###################################################################################
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

####################################################################################
# funcion de control-c
trap ctrl_c INT
function ctrl_c()
{
clear
ls /home/$(whoami)/Descargas/*.deb 2>/dev/null 0>/dev/null 1>/dev/null
if [ $? = 0 ] 2>/dev/null 0>/dev/null
then
    rm -R /home/$(whoami)/Descargas/*.deb
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
else
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
fi
}




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
echo -e "-${verde}  Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |  ${borra_colores}                        Para mejor visualizacion, presiona F11.     -"
echo -e "-${verde}                                   | www.reparaciondesistemas.com     |  ${borra_colores}                        Control + C -->> finalizar script.          -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${verde} Nombre del script.${borra_colores}               < instalar_software_no_incluido_en_repositorios.sh >                                                       -"
echo "-                                                                                                                                             -"
echo -e "-${verde} Funcionamiento.${borra_colores}                  Seleccionar software externo para instalar.                                                                -"
echo -e "-                                  ${amarillo}Si estas conectado de forma remota, NO funcionara, tienes que estar en${borra_colores}                                     -"
echo -e "-                                  ${amarillo}una termnal en local.${borra_colores}                                                                                      -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${amarillo}           Recuerda que los paquetes deb que te descarges, tienen que estar en la carpeta descargas.${borra_colores}                                         -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 1. Buscar tu software de descarga                                                                                                           -"
echo "- 2. Virtualbox con Firefox                                                                                                                   -"
echo "- 3. Franz con Firefox                                                                                                                        -"
echo "- 4. Teamviwer con Firefox                                                                                                                    -"
#echo "- 5. Opcion vacia                                                                                                 -"
#echo "- 6. Opcion vacia                                                                                                 -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 70. Ver el software para instalar                                                                                                           -"
echo -e "- 80. Borrar todo lo descargado.  ${rojo}QUIDADO BORRARA TODOS LOS FICHEROS CON EXTENSION *.DEB${borra_colores}                                                      -"
echo "- 90. Instalar todo lo descargado                                                                                                             -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 99. Atras / Salir                                                                                                                           -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -n "- Seleccione una opcion del menu --->>> "
read opcion
case $opcion in
    

    1) firefox www.google.es 2>/dev/null;;

    2) firefox https://www.virtualbox.org/wiki/Downloads 2>/dev/null;;

    3) firefox https://meetfranz.com/ 2>/dev/null;;

    4) firefox https://www.teamviewer.com/es/descarga/linux/ 2>/dev/null;;

    5) echo "opcion vacia";
        read pausa;;

    6) echo "opcion vacia";
        read -p "- Pulsa ENTER para continuar " pause;;
        
    70) #ls="ls /home/$(whoami)/Descargas";
        ls /home/$(whoami)/Descargas/*.deb 2>/dev/null 0>/dev/null 1>/dev/null
        if [ $? = 0 ] 2>/dev/null 2>/dev/null 0>/dev/null 1>/dev/null
        then 
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-                                 ${verde}Software descargado y listo para instalar${borra_colores}                                                                   -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "${azul}$(ls -c /home/$(whoami)/Descargas/*.deb)${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-                                 ${amarillo}No existe ningun software descargado.....${borra_colores}                                                                   -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            sleep 3
        fi;;
        
    80) ls /home/$(whoami)/Descargas/*.deb 2>/dev/null 0>/dev/null 1>/dev/null
        if [ $? = 0 ] 2>/dev/null 2>/dev/null 0>/dev/null 1>/dev/null
        then
            read -p "- Seguro que quieres borrar todo lo de la carpeta descargas? ( S/N ) -->> " respuesta;
            if [ $respuesta = "S" ] 2>/dev/null;
            then
                rm -R /home/$(whoami)/Descargas/*.deb;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "-                     ${verde}Todo borrado${borra_colores}                                                                                                            -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                sleep 3;
            else
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "-                     ${verde}Cancelado, no se borra nada${borra_colores}                                                                                             -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                sleep 3;
            fi;
        else
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-                                 ${amarillo}No existe ningun software descargado.....${borra_colores}                                                                   -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            sleep 3
        fi;;
        
    90) ls /home/$(whoami)/Descargas/*.deb 2>/dev/null 0>/dev/null 1>/dev/null
        if [ $? = 0 ] 2>/dev/null 2>/dev/null 0>/dev/null 1>/dev/null
        then 
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-                                         ${verde}Instalando todo lo descargado${borra_colores}                                                                       -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            sudo dpkg -i /home/$(whoami)/Descargas/*.deb;
            sudo apt-get -f -y install;
            sudo rm /home/$(whoami)/Descargas/*.deb;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-                                         ${verde}Todo INSTALADO. presiona enter${borra_colores}                                                                      -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";        
            read -p "- Pulsa ENTER para continuar " pause;
        else
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-                                         ${amarillo}NO hay nada para instalar${borra_colores}                                                                           -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";        
            sleep 3
        fi;;

    99) ctrl_c;;

*) echo "";
   echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
   echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU. Seleccion 1, 2, 3, 4, 5 a 99                                     ${borra_colores}                                          -";
   echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                      -";
   echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
   read pause;;
esac
done
