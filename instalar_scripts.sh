#!/bin/bash
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

#Recargo el fichero .bashrc
source /home/$(whoami)/.bashrc

#toma el control del control + c
trap ctrl_c INT
function ctrl_c(){
clear
if [ -d /mnt/$nombre_destino ]
then
    sudo umount /mnt/$nombre_destino
    sudo rmdir /mnt/$nombre_destino
else
    echo "" #sin nada, continua
fi

if [ -d /home/$(whoami)/$ruta_destino ]
then 
    echo ""
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo "                                           ___                     _                                                                           "
    echo "                                          / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                          "
    echo "                                         | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                         "
    echo "                                          \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                           "
    echo "                                                                                    |_|                                                        "
    echo "                             _   _   _     _   _   _                               _                     _          _                          "
    echo "                            | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                        "
    echo "                            | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                       "
    echo "                             \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                       "
    echo "                                                                                                            |_|                                "
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo -e "-${amarillo} NO se borra la carpeta /home/$(whoami)/$ruta_destino de los scripts, porque puede haber scripts anteriores. ${borra_colores}"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    exit 0
else
    echo ""
fi

if [ -d /tmp/scripts_instalar ]
then
    cd /tmp
    rm -R scripts_instalar.sh
    rm -R scripts_instalar
    echo ""
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo "                                           ___                     _                                                                           "
    echo "                                          / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                          "
    echo "                                         | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                         "
    echo "                                          \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                           "
    echo "                                                                                    |_|                                                        "
    echo "                             _   _   _     _   _   _                               _                     _          _                          "
    echo "                            | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                        "
    echo "                            | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                       "
    echo "                             \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                       "
    echo "                                                                                                            |_|                                "
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo "                                      Todos los datos borrados. Muchas gracias por utilizar mi script.                                         "
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    exit
else
    echo ""
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo "                                           ___                     _                                                                           "
    echo "                                          / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                          "
    echo "                                         | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                         "
    echo "                                          \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                           "
    echo "                                                                                    |_|                                                        "
    echo "                             _   _   _     _   _   _                               _                     _          _                          "
    echo "                            | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                        "
    echo "                            | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                       "
    echo "                             \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                       "
    echo "                                                                                                            |_|                                "
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo "                                        Saliendo.... Muchas gracias por utilizar mi script.                                                    "
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    exit
fi
}

#inicializar variables vacias
ruta_repositorios_scripts="VALOR_REQUERIDO"
ruta_destino="VALOR_REQUERIDO"
nombre_destino="No_requerido_si_no_es_por_red"
nombre_usuario="No_requerido_si_no_es_por_red"

#echo -e "${rojo}Estes es el texto en rojo.${borra_colores"
#colores
rojo="\e[0;31m\033[1m" #rojo
verde="\e[;32m\033[1m" 
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
rosa="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
borra_colores="\033[0m\e[0m" #borra colores

#funcion de borrar datos ontroducidos
borra_datos_introducidos(){
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-${amarillo}            OK.......           SE BORRAN LAS RUTAS INTRODUCIDAS    ${borra_colores}                                                                         -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
sleep 3
}

#funcion recojer_datos_principales
recojer_datos_principales(){
while :
do
if [ -d $ruta_destino ]
then
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
    echo -e "-  ${verde}Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |                          Para mejor visualizacion, presiona F11.     ${borra_colores}-"
    echo -e "-  ${verde}                                 | www.reparaciondesistemas.com     |                          Control + C -->> finalizar script.          ${borra_colores}-"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo -e "- ${verde}Nombre del script.${borra_colores}    < instalacion_scripts.sh >                                                                                            -"
    echo "-                                                                                                                                             -"
    echo -e "- ${verde}Descripcion.${borra_colores}    Script que se encarga instalar los scripts seleccionados en tu maquina.                                                     -"
    echo "-                                                                                                                                             -"
    echo -e "- ${verde}Funcionamiento.${borra_colores} Se pediran los datos necesarios para instalar los scripts que indiques.                                                     -"
    echo "-                 nota, Si los scripts estan en una unidad en red, tendras que montarla primero.                                              -"
    echo "-                                                                                                                                             -"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    read -p "- Ruta absoluta de los repositorios de los scripts? -->> " ruta_repositorios_scripts
        #comprueba la ruta_repositorios_scripts
        if [ $ruta_repositorios_scripts ! ] 2>/dev/null
        then
            echo -e "- ${amarillo}¡¡¡ La ruta seleccionada NO contiene scripts !!! ${borra_colores}"
            sleep 3
            ruta_destino="VALOR_REQUERIDO"
            ruta_repositorios_scripts="VALOR_REQUERIDO"
            menu_principal
        else
            echo ""
        fi
        
        ls $ruta_repositorios_scripts*.sh 2>/dev/null 1>/dev/null
        if [ $? = 0 ] 2>/dev/null
        then
            echo ""
        else
            echo -e "- ${amarillo}¡¡¡ La ruta seleccionada NO contiene scripts !!! ${borra_colores}"
            sleep 3
            ruta_destino="VALOR_REQUERIDO"
            ruta_repositorios_scripts="VALOR_REQUERIDO"
            menu_principal
        fi
        
        
        
        read -p "- Dime nombre de carpeta a poner los scripts /home/$(whoami)/ -->> " ruta_destino
        #comprueba si la ruta esta vacia.
        if [ $ruta_destino ! ] 2>/dev/null
        then
            echo -e "- ${amarillo}Has colocado la carpeta de los scrits en blanco. ${borra_colores}"
            ruta_destino="VALOR_REQUERIDO"
            ruta_repositorios_scripts="VALOR_REQUERIDO"
            sleep 3
            menu_principal
        else
            if [ -d /home/$(whoami)/$ruta_destino ] 2>/dev/null
            then
                echo -e "- ${rojo} ¡¡¡ La ruta destino de los scripts (${amarillo}/home/$(whoami)/$ruta_destino)${rojo} YA EXISTE EN TU SISTEMA. !!!${borra_colores}"
                read -p "- ¿ Desas utilizarla de todas formas ?. (S/N) -->> " sn
                if [ $sn = "S" ]
                then 
                    echo -e "- ${verde} Carpeta $ruta_destino seleccionada.....${borra_colores}"
                    sleep 3
                else
                    echo -e "- ${amarillo}No se borra nada, Introduce datos de nuevo.${borra_colores} "
                    ruta_destino="VALOR_REQUERIDO"
                    ruta_repositorios_scripts="VALOR_REQUERIDO"
                    read -p "- Pulsa una tecla para continuar ............." pause
                    menu_principal
                fi
            else 
                echo ""
            fi
        fi
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo -e "- Ruta de repositorios ${amarillo}$ruta_repositorios_scripts${borra_colores}"
    echo -e "- Ruta de destino ${amarillo}/home/$(whoami)/$ruta_destino${borra_colores}"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    read -p "- Son correctos los datos ( S/N )? " respuesta
    if [ $respuesta = "S" ] 2>/dev/null
            then 
                if [ -d /home/$(whoami)/$ruta_destino ]
                then
                    echo -e "-${verde} Datos introducidos con exito.${borra_colores}"
                    sleep 2
                    menu_principal
                else
                    mkdir /home/$(whoami)/$ruta_destino
                    echo -e "-${verde} Datos introducidos con exito.${borra_colores}"
                    sleep 2
                    menu_principal
                fi
            
            else
                borra_datos_introducidos
            fi
else    
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
    echo -e "-  ${verde}Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |                          Para mejor visualizacion, presiona F11.     ${borra_colores}-"
    echo -e "-  ${verde}                                 | www.reparaciondesistemas.com     |                          Control + C -->> finalizar script.          ${borra_colores}-"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo -e "- ${verde}Nombre del script.${borra_colores}    < instalacion_scripts.sh >                                                                                            -"
    echo "-                                                                                                                                             -"
    echo -e "- ${verde}Descripcion.${borra_colores}    Script que se encarga instalar los scripts seleccionados en tu maquina.                                                     -"
    echo "-                                                                                                                                             -"
    echo -e "- ${verde}Funcionamiento.${borra_colores} Se pediran los datos necesarios para instalar los scripts que indiques.                                                     -"
    echo "-                 nota, Si los scripts estan en una unidad en red, tendras que montarla primero.                                              -"
    echo "-                                                                                                                                             -"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    read -p "- Ruta absoluta de los repositorios de los scripts? -->> " ruta_repositorios_scripts
        #comprueba la ruta_repositorios_scripts
        if [ $ruta_repositorios_scripts ! ] 2>/dev/null
        then
            echo -e "- ${amarillo}¡¡¡ La ruta seleccionada NO contiene scripts !!! ${borra_colores}"
            sleep 3
            ruta_destino="VALOR_REQUERIDO"
            ruta_repositorios_scripts="VALOR_REQUERIDO"
            menu_principal
        else
            echo ""
        fi
        
        ls $ruta_repositorios_scripts*.sh 2>/dev/null 1>/dev/null
        if [ $? = 0 ] 2>/dev/null
        then
            echo ""
        else
            echo -e "- ${amarillo}¡¡¡ La ruta seleccionada NO contiene scripts !!! ${borra_colores}"
            sleep 3
            ruta_destino="VALOR_REQUERIDO"
            ruta_repositorios_scripts="VALOR_REQUERIDO"
            menu_principal
        fi
        
        
        
        read -p "- Dime nombre de carpeta a poner los scripts /home/$(whoami)/ -->> " ruta_destino
        #comprueba si la ruta esta vacia.
        if [ $ruta_destino ! ] 2>/dev/null
        then
            echo -e "- ${amarillo}Has colocado la carpeta de los scrits en blanco. ${borra_colores}"
            ruta_destino="VALOR_REQUERIDO"
            ruta_repositorios_scripts="VALOR_REQUERIDO"
            sleep 3
            menu_principal
        else
            if [ -d /home/$(whoami)/$ruta_destino ] 2>/dev/null
            then
                echo -e "- ${rojo} ¡¡¡ La ruta destino de los scripts (${amarillo}/home/$(whoami)/$ruta_destino)${rojo} YA EXISTE EN TU SISTEMA. !!!${borra_colores}"
                read -p "- ¿ Desas utilizarla de todas formas ?. (S/N) -->> " sn
                if [ $sn = "S" ]
                then 
                    echo -e "- ${verde} Carpeta $ruta_destino seleccionada.....${borra_colores}"
                    sleep 3
                else
                    echo -e "- ${amarillo}No se borra nada, Introduce datos de nuevo.${borra_colores} "
                    ruta_destino="VALOR_REQUERIDO"
                    ruta_repositorios_scripts="VALOR_REQUERIDO"
                    read -p "- Pulsa una tecla para continuar ............." pause
                    menu_principal
                fi
            else 
                echo ""
            fi
        fi
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo -e "- Ruta de repositorios ${amarillo}$ruta_repositorios_scripts${borra_colores}"
    echo -e "- Ruta de destino ${amarillo}/home/$(whoami)/$ruta_destino${borra_colores}"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    read -p "- Son correctos los datos ( S/N )? " respuesta
    if [ $respuesta = "S" ] 2>/dev/null
            then 
                if [ -d /home/$(whoami)/$ruta_destino ]
                then
                    echo -e "-${verde} Datos introducidos con exito.${borra_colores}"
                    sleep 2
                    menu_principal
                else
                    mkdir /home/$(whoami)/$ruta_destino
                    echo -e "-${verde} Datos introducidos con exito.${borra_colores}"
                    sleep 2
                    menu_principal
                fi
            
            else
                borra_datos_introducidos
            fi
fi    
done
}

#funcion de menu_principal
menu_principal(){
clear
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
echo -e "-  ${verde}Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |                          Para mejor visualizacion, presiona F11.     ${borra_colores}-"
echo -e "-  ${verde}                                 | www.reparaciondesistemas.com     |                          Control + C -->> finalizar script.          ${borra_colores}-"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-                          Ruta de repositorios ${verde} $ruta_repositorios_scripts ${borra_colores}"
echo -e "-                          Ruta de destino ${verde} /home/$(whoami)/$ruta_destino ${borra_colores}"
echo -e "-                          Ruta de repositorios en red ${amarillo}/mnt/$nombre_destino ${borra_colores}"
echo -e "-                          Usuario para la red${amarillo} $nombre_usuario ${borra_colores}"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"                                                                                                               
echo "- 1. Entrada de datos                                                                                                                         -"
echo "- 2. Montar unidades temporales de red ( con mount )                                                                                          -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------" 
echo "- 40. listar los nombres de los scripts, seguramente estaran metidos en carpetas.                                                             -"
echo "- 50. Seleccionar los nombres de scripts a instalar, se volveran a listar ( nombrecarpeta/nombre.sh )                                         -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------" 
echo "- 70. Listar los scripts a instalar                                                                                                           -"
echo "- 80. Quitar todos los script a instalar                                                                                                      -"
echo "- 90. Instalar los scripts seleccionados                                                                                                      -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- 99. Atras / Salir                                                                                                                           -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
read -p "- Selecciona un opcion del menu -->> " opcion
case $opcion in
    
    1) #ir a menu de entrada de datos
        recojer_datos_principales;;
    
    2) #montar unidades temporales
        clear;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- 1. Te pedira la ruta a absoluta a montar, ej, //192.168.1.100/direcion_la_carpeta__montar.                                                  -";
        echo "- 2. Te pedira el nombre de usuario, ej oscar.                                                                                                -";
        echo "- 3. Te pedira el password de la unidad de red.                                                                                               -";
        echo "- 4. Te pedira el nombre de carpeta destino y se montara en /mnt/nombre_de_carpeta.                                                           -";
        echo "-                                                                                                                                             -";
        echo "- Nota. Se instalara si es necesario el paquete cifs-utils, con la orden sudo apt install cifs-utils -y                                       -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read -p "- Unidad de red a montar con su direccion absoluta >> " unidad_carpeta
        read -p "- Nombre de Usuario de la unidad de red >> " nombre_usuario
        read -p "- Password del Usuario de la Unidad de red >> " unidad_password
        read -p "- Nombre de carpeta para destino /mnt >> " nombre_destino
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo -e "  Direccion a montar  -->>${azul} $unidad_carpeta ${borra_colores}"
        echo -e "  Usuario             -->>${azul} $nombre_usuario ${borra_colores}"
        echo -e "  Password            -->>${azul} NO TE LO MUESTRO ${borra_colores}"
        echo -e "  Carpeta destino     -->>${azul} $nombre_destino ${borra_colores}"
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
        read -p "- Es correpto ? ( S/N ) -->> " correcto;
        smbclient -U $nombre_usuario%$unidad_password -L $unidad_carpeta 0>/dev/null 2>/dev/null 1>/dev/null
        if [[ $? = 0 ]] && [[ $correcto = "S" ]]
        then
            if [ -d /etc/cifs-utils/ ];
            then
                clear;
                sudo mkdir /mnt/$nombre_destino;
                sudo mount -t cifs $unidad_carpeta /mnt/$nombre_destino -o user=$nombre_usuario,uid=$nombre_usuario,gid=$nombre_usuario 2>/dev/null;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "-${verde} Unidad montada, pulsa una tecla para seguir.${borra_colores}                                                                                                -";
                echo "- Para mejor visualizacion, presiona F11                                                                                                      -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read -p "- Pulsa ENTER para continuar " pause;
            else
                sudo apt install cifs-utils -y;
                clear;
                sudo mkdir /mnt/$nombre_destino;
                sudo mount -t cifs $unidad_carpeta /mnt/$nombre_destino -o user=$nombre_usuario,uid=$nombre_usuario,gid=$nombre_usuario 2>/dev/null;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "-${verde} Unidad montada, pulsa una tecla para seguir.${borra_colores}                                                                                                -";
                echo "- Para mejor visualizacion, presiona F11                                                                                                      -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read -p "- Pulsa ENTER para continuar " pause;
            fi
        
        else
            clear
            nombre_destino="No_requerido_si_no_es_por_red"
            nombre_usuario="No_requerido_si_no_es_por_red"
            nombre_carpeta=""
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
            echo -e "${amarillo}                          Has seleccionado N o NO hay acceso a la unidad de red.${borra_colores}"
            echo -e "${amarillo}                          Saliendo, ejecuta de nuevo si quieres volver a intentar.${borra_colores}"
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
            read -p "- Pulsa ENTER para continuar " pause;
        
        fi;;


    40) #listar los nombres de los scripts
        if [ $ruta_repositorios_scripts = "VALOR_REQUERIDO" ]
        then
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "${amarillo} La ruta de repositorios de los scripts, NO esta definida.${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo " listando el contenido de $ruta_repositorios_scripts";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";     
            ls -l $ruta_repositorios_scripts | awk '{print $9}';
            echo ""
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
    
    50) #seleccionar los scripts a instalar
        if [ $ruta_repositorios_scripts = "VALOR_REQUERIDO" ]
        then
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "${amarillo} La ruta de repositorios de los scripts, NO esta definida.${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "- listando el contenido de $ruta_repositorios_scripts";
            echo "- Si quieres instalar todos los scripts, puedes hacer esto: colocar ( * )                                                                     -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"; 
            ls -l $ruta_repositorios_scripts | awk '{print $9}';
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Dime nombre de script ( de uno en uno, o asterisco * selecciona todos ) -->> " script;
            echo "#------------------------------------------------------------------------------------------------------------------" >> /tmp/scripts_instalar.sh;
            echo "# Nombre del script >> $script " >> /tmp/scripts_instalar.sh;
            mkdir /tmp/scripts_instalar;
            cp $ruta_repositorios_scripts/$script /tmp/scripts_instalar/;
        fi;;
    
    70) #lista los script para instalar
        if [ $ruta_repositorios_scripts = "VALOR_REQUERIDO" ]
        then
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "${amarillo} La ruta de repositorios de los scripts, NO esta definida.${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "- Lista de scripts, para instalar                                                                                                             -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            cat /tmp/scripts_instalar.sh;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "- pulsa una tecla para continuar                                                                                                              -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read pause;
        fi;;
    
    80) #quita todos los script a instalar
        if [ $ruta_repositorios_scripts = "VALOR_REQUERIDO" ]
        then
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "${amarillo} La ruta de repositorios de los scripts, NO esta definida.${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            clear;
            cd /tmp;
            rm -R scripts_instalar.sh;
            rm -R scripts_instalar;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-${verde} Todos los scripts para instalar borrados, vuelve a seleccionar para instalar.${borra_colores}                                                               -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
    
    90) #instala todos los script
        if [ $ruta_repositorios_scripts = "VALOR_REQUERIDO" ]
        then
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "${amarillo} La ruta de repositorios de los scripts, NO esta definida.${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            if [ -f /tmp/scripts_instalar.sh ]
            then
                #bora la linea del .bashrc y el fichero .bashrc_scripts
                sed -i '/bashrc_scripts/d' $HOME/.bashrc
                rm $HOME/.bashrc_scripts 2>/dev/null
                
                #copia los scripts seleccionados
                cp /tmp/scripts_instalar/* /home/$(whoami)/$ruta_destino;
                chmod +x /home/$(whoami)/$ruta_destino/*;
                
                #Mete al .bashrc_scripts la ruta en el path
                echo "# mete la ruta en el path de los scripts" >> /home/$(whoami)/.bashrc_scripts;
                echo "PATH=$PATH:/home/$(whoami)/$ruta_destino" >> /home/$(whoami)/.bashrc_scripts;
                echo "" >> /home/$(whoami)/.bashrc_scripts;
        
                # Mete al .bashrc_scripts la funcion de lista script 
                echo "" >> /home/$(whoami)/.bashrc_scripts;
                echo "# Mete al .bashrc la funcion de lista script " >> /home/$(whoami)/.bashrc_scripts;
                echo 'echo "# Ver Scripts instalados = scripts "' >> $HOME/.bashrc_scripts;
                echo "scripts() {"  >> /home/$(whoami)/.bashrc_scripts;
                echo "echo '-----------------    SUKIGSX ----------------------'" >> /home/$(whoami)/.bashrc_scripts;
                echo "echo '- LISTADO DE LOS SCRIPTS INSTALADOS EN TU SISTEMA -'" >> /home/$(whoami)/.bashrc_scripts;
                echo "ls -l /home/$(whoami)/$ruta_destino | awk '{print "'$9'"}'" >> /home/$(whoami)/.bashrc_scripts;
                echo "}" >> /home/$(whoami)/.bashrc_scripts; 
                echo "" >> /home/$(whoami)/.bashrc_scripts;
                
                #mete al .bashrc la orden de carga del fifhero .bashrc_scripts
                echo "source $HOME/.bashrc_scripts" >> /home/$(whoami)/.bashrc;
                
                cd /tmp;
                rm -R scripts_instalar.sh;
                rm -R scripts_instalar;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "-${verde} Todos los scripts para instalar copiados a /home/$(whoami)/$ruta_destino y actualizado el PATH de .bashrc.${borra_colores}";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read -p "- Pulsa ENTER para continuar " pause;
            else
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "-${amarillo} NO hay scripts seleccionados, seleccion como minimo uno para instalar. ${borra_colores}                                                                     -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read -p "- Pulsa ENTER para continuar " pause;
            fi;
        fi;;
        
    99) #salida y borra todo lo temporal
        clear;
        if [ -d /mnt/$nombre_destino ]
        then
            sudo umount /mnt/$nombre_destino;
            sudo rmdir /mnt/$nombre_destino;
        else
            echo "" #sin nada, continua
        fi;
        
        if [ -d /tmp/scripts_instalar ]
        then
            clear
            cd /tmp;
            rm -R scripts_instalar.sh;
            rm -R scripts_instalar;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
            echo "                                           ___                     _                                                                           "
            echo "                                          / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                          "
            echo "                                         | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                         "
            echo "                                          \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                           "
            echo "                                                                                    |_|                                                        "
            echo "                             _   _   _     _   _   _                               _                     _          _                          "
            echo "                            | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                        "
            echo "                            | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                       "
            echo "                             \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                       "
            echo "                                                                                                            |_|                                "
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
            echo -e "                ${amarillo}                      Todos los datos borrados. Muchas gracias por utilizar mi script.      ${borra_colores}                                   "
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
            exit;
        else
            clear
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
            echo "                                           ___                     _                                                                           "
            echo "                                          / __|  ___   ____   __  (_)  ____   ___    ____   ___   _ _                                          "
            echo "                                         | (_ | |  _| / _  | / _| | | / _  | (_-<   |  _ \ / _ \ |  _|                                         "
            echo "                                          \___| |_|   \____| \__| |_| \____| /__/   | .__/ \___/ |_|                                           "
            echo "                                                                                    |_|                                                        "
            echo "                             _   _   _     _   _   _                               _                     _          _                          "
            echo "                            | | | | | |_  (_) | | (_)  ___  ____   _ _     ____   (_)    ___  __   _ _  (_)  ____  | |_                        "
            echo "                            | |_| | |  _| | | | | | | |_ / / _  | |  _|   |    \  | |   (_-< / _| |  _| | | |  _ \ |  _|                       "
            echo "                             \___/   \__| |_| |_| |_| /__| \____| |_|     |_|_|_| |_|   /__/ \__| |_|   |_| |  __/  \__|                       "
            echo "                                                                                                            |_|                                "
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "        ${verde}                              Saliendo.... Muchas gracias por utilizar mi script.      ${borra_colores}                                                ";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            exit
        fi;;
    
    *)
        echo "";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU. Seleccion 1, 2, 3, 4, 5 a 99                                     ${borra_colores}                                          -";
        echo "-                                                                                                                                             -";
        echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                      -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read pause;;
esac
done
}

#ejecucion del programa
#recojer_datos_principales
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
    echo -e "-  ${verde}Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |                          Para mejor visualizacion, presiona F11.     ${borra_colores}-"
    echo -e "-  ${verde}                                 | www.reparaciondesistemas.com     |                          Control + C -->> finalizar script.          ${borra_colores}-"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
    echo -e "- ${verde}Nombre del script.${borra_colores}    < instalacion_scripts.sh >                                                                                            -"
    echo "-                                                                                                                                             -"
    echo -e "- ${verde}Descripcion.${borra_colores}    Script que se encarga instalar los scripts seleccionados en tu maquina.                                                     -"
    echo "-                                                                                                                                             -"
    echo -e "- ${verde}Funcionamiento.${borra_colores} Se pediran los datos necesarios para instalar los scripts que indiques.                                                     -"
    echo "-                 nota, Si los scripts estan en una unidad en red, tendras que montarla primero.                                              -"
    echo "-                                                                                                                                             -"
    echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
read pause
    menu_principal
exit


