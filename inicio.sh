 #!/bin/bash
###################################################################################################3
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

###################################################################################################
#funcion ayuda
function ayuda(){
clear
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "- Explicacion de los menus principales:                                                                                                       -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-     1. Actualizacion de sistema con update     >>   Basicamente realiza una actualizacion de la lista de repositorios de tu sistema.        -"
echo "-     2. Actualizacion de sistema con upgrade    >>   Realiza la instalacion de las actualizaciones de software y paquetes de tu sistemas.    -"
echo "-     3. Actualizar sistema con update y upgrade >>   Realiza los dos pasos anteriores a la vez.                                              -"
echo "-     4. Actualizacion completo (solo KDE)       >>   Realiza la actualizacion del sistema complatamente, solo para entornos KDE PLASMA.      -"
echo "-     5. Instalacion repositorios y actualizar   >>   Instala repositorios adicionales, para poder instalar software.                         -"
echo "-     6. Instala el script en tu maquina         >>   Basicamente lo que hace es instalar el script en tu maquina.                            -"
echo "-     7. Instalar sostware de repositorios       >>   Instalacion de software que tengas disponible en tus repositorios.                      -"
echo "-     8. Instalar software externo               >>   Podras descargar los paquetes *.deb y luego se instalar todos a la vez.                 -"
echo "-     9. Busca equipos en la red                 >>   Realiza un nmap que busque dispositivos conectados en tu red para saber la ip.          -"
echo "-    10. Conectar a equipo de red                >>   Cuando ya sabes la ip, te facilita la conexion por ssh.                                 -"
echo "-    11. Ejecuta una terminal de comandos        >>   Se carga una terminal de comandos segun tu sistema, para poder solucionar problemas     -"
echo "-    70. Instalacion en equipos remotos          >>   Copia el script de instalacion a la direccion destino pos ssh, REQUIERE que el script   -"
echo "-                                                     de instalacion este en tu sistema instalado. Tambien puedes disponer de el en github.   -"
echo "-                                                       Instalar    > sudo apt install git                                                    -"
echo "-                                                       Repositorio > sudo git clone https://www.github.com/sukigsx/instalacion_linux.git     -"
echo "-    80. Instalar script                         >>   Permine seleccionar los script que deseas instalar y los pone en tu maquina y configura -"
echo "-                                                       el acceso rapido desde la terminal, modificando el fichero .bashrc.                   -"
echo "-    90. Menu de ayuda                           >>   Lo que estas biendo jejeje                                                              -"
echo "-    99. Salir                                   >>   Sale del script                                                                         -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
read -p "- Pulsa ENTER para continuar " pause
}

#########################################################
# Aqui empieza el tema
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
echo -e "-  ${verde}Diseñado por sukigsx / Contacto: | sukisx@reparaciondesistemas.com  |                          Para mejor visualizacion, presiona F11. ${borra_colores}    -"
echo -e "-  ${verde}                                 | www.reparaciondesistemas.com     |                          Control + C -->> finalizar script. ${borra_colores}         -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -e "-    ${verde} Nombre del script < inicio.sh >                   Instalacion de software en sintemas linux.  ${borra_colores}                                          -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-     1. Actualizacion de sistema con update.                 >>      Orden sudo apt update.                                                  -"
echo "-     2. Actualizacion de sistema con upgrade.                >>      Orden sudo apt upgrade.                                                 -"
echo "-     3. Actualizar sistema completo con update y upgrade.    >>      Orden sudo apt update & apt upgrade.                                    -"
echo "-     4. Actualizar completo. ( Solo valido para kde ).       >>      Orden sudo pkcon update.                                                -"
echo "-     5. Instalar repositorios y actualizar.                  >>      Ejecuta script (bash instalar_repositorios.sh).                         -"
echo "-     6. Instalar el script de instalacion en tu maquina.     >>      Se instala este script en local  (bash instalar_script_local.sh).       -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-     7. Instalar software de repositorios.  >>   Seleccion de software a instalar (bash instalar_software_incluido_en_los_repositorios.sh).  -"
echo "-     8. Instalar software externo.          >>   Seleccion de software externo (bash instalar_software_no_incluido_en_los_repositorios.sh).  -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-     9. Buscar equipos en la red.                           >>      Localizar ip,s de equipos en red.                                        -"
echo "-    10. Conectar a equipo de red.                           >>      Se coneccta por ssh al equipo seleccionado.                              -"
echo "-    11. Ejecuta una terminal de comandos.                   >>      Se carga una terminal de comandos segun tu sistema.                      -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "     70. Instalar en equipos remotos.                        >>      Copia el script de instalacion a la direccion destino pos ssh.           -"
echo "-                                                                    Requiere tener el script instalado o descargarlo desde github.           -"
echo "-                                                                    https://www.github.com/sukigsx/instalacion_linux.                        -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo "-    80. Instalar scripts.                                   >>      Instalar script en tu sistemas.                                          -"
echo "-    90. Ayuda.                                              >>      Su nombre lo dice todo.                                                  -"
echo "-    99. Salir.                                              >>      Sale del script.                                                         -"
echo "-----------------------------------------------------------------------------------------------------------------------------------------------"
echo -n "- Seleccione una opcion del menu --->>> "
read opcion
case $opcion in
    1) #Actualizar el sistema con update
        clear;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- Enpezando el update.                                                                                                                        -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        sudo apt update;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- sudo apt update, Realizado con exito.                                                                                                       -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read -p "- Pulsa ENTER para continuar " pause;;
        
    2) #Actualizar con upgrade
        if [ -d /home/$(whoami)/.kde ]
        then
            echo -e "${rojo}-----------------------------------------------------------------------------------------------------------------------------------------------${borra_colores}";
            echo -e "${rojo}- LO SIENTO, He destectado KDE, la orden no se puede ejecutar, SELECCIONA OPCION ( 4 )                                                        -${borra_colores}";
            echo -e "${rojo}-----------------------------------------------------------------------------------------------------------------------------------------------${borra_colores}";
            read -p "- Pulsa ENTER para continuar " pause;
        else
        sudo apt upgrade;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- sudo apt upgrade, Realizado con exito.                                                                                                      -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        fi;;
        
        
    3) #Actualizar sistema completo NO kde update y upgrade
        if [ -d /home/$(whoami)/.kde ]
        then
            echo -e "${rojo}-----------------------------------------------------------------------------------------------------------------------------------------------${borra_colores}";
            echo -e "${rojo}- LO SIENTO, He destectado KDE, la orden no se puede ejecutar, SELECCIONA OPCION ( 4 )                                                        -${borra_colores}";
            echo -e "${rojo}-----------------------------------------------------------------------------------------------------------------------------------------------${borra_colores}";
            read -p "- Pulsa ENTER para continuar " pause;
        else
        sudo apt update;
        sudo apt upgrade;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo "- sudo apt upgrade, Realizado con exito.                                                                                                      -";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        fi;;
    
    4) #Actualizar completo solo kde con pkcon update
        if [ -d /home/$(whoami)/.kde ]
        then
            sudo pkcon update;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo "- sudo pkcon update, realizado con exito                                                                                                      -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        else
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "- ${rojo}Lo siento no estas en un sistema con entorno KDE, seleccion opcion 3.${borra_colores}                                                                       -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
    
    5) #Instalar repositorios
        bash instalar_repositorios.sh;;
        
    6) #instalar este script en local
        #bash instalar_script_local.sh;;
        read -p "- Dime nombre de direcctorio de instalacion /home/$(whoami)/--> " nombre;
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        while :
        do
        echo -e "- La ruta seleccionada es (${amarillo} /home/$(whoami)/$nombre ${borra_colores}) ";
        read -p "- Es correpto ( S/N )  ? -->> " correcto;
        case $correcto in
        S)  if [ -d /home/$(whoami)/$nombre ];
            then
                cp -r *.sh /home/$(whoami)/$nombre;
                chmod +x /home/$(whoami)/$nombre/inicio.sh;
        
                #bora la linea del .bashrc y el fichero .bashrc_scripts
                sed -i '/bashrc_instalacion_linux/d' $HOME/.bashrc
                rm $HOME/.bashrc_instalacion_linux 2>/dev/null
        
                #mete al fichero .bashrc_instalacion:linux
                echo "# mete la ruta en el path de script_instalacion" >> /home/$(whoami)/.bashrc_instalacion_linux;
                echo 'echo "# Script de instalacion instalado = inicio.sh"' >> $HOME/.bashrc_instalacion_linux;
                echo "PATH=$PATH:/home/$(whoami)/$nombre" >> /home/$(whoami)/.bashrc_instalacion_linux;
                echo ""  >> /home/$(whoami)/.bashrc_instalacion_linux;
        
                clear;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";  
                echo "  OK, Todos los scripts copiados en /home/$(whoami)$nombre";
                echo "  Ya puedes ejecutar la orden inicio.sh para ejecutar el script de instalacion.";
                echo "";
                echo "  RECUERDA REINICIAR EL TERMINAL      Pulsa un tecla para salir.";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        
                #mete la linea de carga de fichero al .bashrc
                echo "source $HOME/.bashrc_instalacion_linux" >> /home/$(whoami)/.bashrc 
        
                read pause;
            else
                mkdir /home/$(whoami)/$nombre;
                cp -r *.sh /home/$(whoami)/$nombre;
                chmod +x /home/$(whoami)/$nombre/inicio.sh;
        
                #bora la linea del .bashrc y el fichero .bashrc_scripts
                sed -i '/bashrc_instalacion_linux/d' $HOME/.bashrc
                rm $HOME/.bashrc_instalacion_linux 2>/dev/null
        
                #mete al fichero .bashrc_instalacion:linux
                echo "# mete la ruta en el path de script_instalacion" >> /home/$(whoami)/.bashrc_instalacion_linux;
                echo 'echo "# Script de instalacion instalado = inicio.sh"' >> $HOME/.bashrc_instalacion_linux;
                echo "PATH=$PATH:/home/$(whoami)/$nombre" >> /home/$(whoami)/.bashrc_instalacion_linux;
                echo ""  >> /home/$(whoami)/.bashrc_instalacion_linux;
        
                clear;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";  
                echo "  OK, Todos los scripts copiados en /home/$(whoami)$nombre";
                echo "  Ya puedes ejecutar la orden inicio.sh para ejecutar el script de instalacion.";
                echo "";
                echo "  RECUERDA REINICIAR EL TERMINAL      Pulsa un tecla para salir.";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        
                #mete la linea de carga de fichero al .bashrc
                echo "source $HOME/.bashrc_instalacion_linux" >> /home/$(whoami)/.bashrc 
        
                read pause;
                break
            fi;;
            
        N)  echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "- ${amarillo}REGRESANDO AL MENU PRINCIPAL.....${borra_colores}                                                                                                           -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            sleep 3;
            break;;
            
        *)  echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU.    Seleccion (S) o (N) En mayusculas.......                                                  ${borra_colores}              -";
            echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                      -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read pause;;
        esac
        done;;
        
    7) #Instalar software de repositorios
        bash instalar_software_incluido_en_los_repositorios.sh;;
        
    8) #Instalar software de terceros
        bash instalar_software_no_incluido_en_los_repositorios.sh;;
    
    9) #Buscar equipos en la red con nmap
        echo -e "- Tu ip en la red es ${verde}$(hostname -I)${borra_colores}"
        read -p "- Dime el rango de tu red lan, por (Ejemplo, 192.168.1) -->> " rango_ip;
        if [ -d /usr/share/nmap ]
        then 
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "- ${verde}Escaneando la red con orden de nmap -sP $rango_ip.0/24${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            nmap -sP $rango_ip.0/24;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-${verde} TERMINADO, Red escaneada.${borra_colores}                                                                                                                   -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        else
            clear;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-${verde} Instalando nmap y Escaneando la red con orden de nmap -sP $rango_ip.0/24${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            sleep 2;
            sudo apt install -y nmap;
            clear;
            nmap -sP $rango_ip.0/24;
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "-${verde} TERMINADO, Red escaneada.${borra_colores}                                                                                                                   -";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
        
    10) #conectar a equipo en la red, por ssh
        echo -e "- Tu ip en la red es ${verde}$(hostname -I)${borra_colores}"
        read -p "- Dime direccion ip a conectar por (ssh) -->> " ssh_ip;
        read -p "- Dime el puerto (ssh, defecto 22) de la maquina $ssh_ip --> " port_maquina_remota
        read -p "- Dime nombre de usuario de $ssh_ip con puerto $port_maquina_remota -->> " ssh_usuario;
        clear;
                port=$port_maquina_remota;  # puerto
                connect_timeout=5;            # Tiempo de espera
                timeout $connect_timeout bash -c "</dev/tcp/$ssh_ip/$port";
                if [ $? == 0 ] 2>/dev/null
                then
                    ssh-keygen -f "/home/sukigsx/.ssh/known_hosts" -R "$ssh_ip" 2>/dev/null
                    clear
                    ssh -t -p $port_maquina_remota $ssh_usuario@$ssh_ip "clear;echo INFORMACION de Sukigsx;echo;echo ESTAS EN LA MAQUINA REMOTA;echo;exec \$SHELL --login"
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo -e "- ${verde}SALIENDO DE LA CONEXION SSH${borra_colores}, Si has tenido problemas de conexion, puedes ejecutar una terminal, con la opcion 11                            -";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo "- Espara un momento ..........                                                                                                                -";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    sleep 5;
                else
                    clear;
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo -e "- ${rojo}La conexion al servidor ssh de la maquina $ssh_ip, NO esta disponible.${borra_colores}";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo "- Espara un momento ..........                                                                                                                -";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    sleep 5;
                fi;;

            
    11) #Ejecuta una terminal sola
        if [ -f /usr/bin/konsole ]
        then
            konsole --fullscreen
        else
            gnome-terminal;
        fi;;
        
    70) #Instalar en equipos remotos
        echo "";
        echo "";
        echo "";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        echo -e "- ${verde}Listado de las carpetas de tu usuario. Necesitas tener instalado el script, opcion 6.              /home/$(whoami)${borra_colores}";
        echo -e "-----------------------------------------------------------------------------------------------------------------------------------------------${azul}"
        ls -l /home/$(whoami)/| awk '{print $9}'
        echo -e "${borra_colores}";
        echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
        read -p "- Dime la ruta donde se encuentran los scripts para copiarlos a la maquina remota -->> " ruta_scripts;
        if [ -f /home/$(whoami)/$ruta_scripts/inicio.sh ]
        then
            echo -e "- Tu ip en la red es ${verde}$(hostname -I)${borra_colores}"
            read -p "- Dime la ip/dominio de la maquina remota (192.168.1.45/sukigsx.noip.es) -->> " ip_maquina_remota;
            read -p "- Dime puerto (ssh, defecto 22) de la maquina remota $ip_maquina_remota -->> " port_maquina_remota
            read -p "- Dime usuario de la maquina remota $ip_maquina_remota con puerto $port_maquina_remota -->> " usuario_maquina_remota
            echo "";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "- ${verde}Los datos para copiar a la maquina remota son:${borra_colores}";
            echo -e "- Scripts para copiarlos a la maquina remota ${azul}/home/$(whoami)/$ruta_scripts${borra_colores}";
            echo -e "- Ip de la maquina remota ${azul}$ip_maquina_remota${borra_colores} y puerto ${azul}$port_maquina_remota${borra_colores} de ssh.";
            echo -e "- Usuario de la maquina remota ${azul}$usuario_maquina_remota${borra_colores}";
            echo "";
            echo -e "- ${amarillo}La maquina remota tiene que tener operativo el servidor de ssh, de lo contrario no funcionara.${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Los datos introducidos son correctos ( S/N ) -->> " sino;
        
            if [ $sino = "S" ] 2>/dev/null
            then
                clear;
                port=$port_maquina_remota;                      # puerto
                connect_timeout=5;            # Tiempo de espera
                timeout $connect_timeout bash -c "</dev/tcp/$ip_maquina_remota/$port";
                if [ $? == 0 ] 2>/dev/null
                then
                    ssh-keygen -f -p $port_maquina_remota "/home/sukigsx/.ssh/known_hosts" -R "$ip_maquina_remota" 2>/dev/null;
                    clear;
                    echo -e "${verde}";
                    scp -P $port_maquina_remota -r /home/$(whoami)/$ruta_scripts/* $usuario_maquina_remota@$ip_maquina_remota:/tmp/;
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo -e "- ${verde}Datos copiados en maquina remota $ip_maquina_remota en carpeta /tmp${borra_colores}";
                    echo -e "- ${amarillo}TERMINADO, Si has tenido problemas de conexion, puedes ejecutar una terminal, con la opcion 11.${borra_colores}";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    dpkg -s konsole &> /dev/null
                    if [ $? -ne 0 ]
                    then
                        echo -e "${rojo}- Se require la terminal (Konsole) en tu sistema."
                        read -p "- Deseas instalar (konsole)? ( S/N ) --> " sino
                        if [ $sino = "S" ] 2>/dev/null
                        then
                            echo -e "${borra_colores}"
                            sudo apt install konsole -y
                            echo ""
                            echo -e "- ${verde}(konsole) ¡ Instalado en tu sistema. !${borra_colores}"
                            read -p "- Quieres conectar a la maquina $ip_maquina_remota ? ( S/N ) --> " sino
                            if [ $sino = "S" ] 2>/dev/null
                            then 
                                echo -e "- ${amarillo}Se va a conectar a la maquina remota, para proceder a instalar...${borra_colores}"
                                read -p "- Pulsa una tecla para continuar. ctrl+c para salir." pause
                                konsole --fullscreen -e ssh -t -p $port_maquina_remota $usuario_maquina_remota@$ip_maquina_remota 'cd /tmp;bash inicio.sh;exec \$SHELL --login'
                                clear
                                echo -e "${verde}Saliendo de la maquina $ip_maquina_remota ${borra_colores} ............."
                                sleep 3
                            else 
                                echo -e "-${rojo} Tendras que conectar de forma manual a la maquina $ip_maquina_remota."
                                echo -e "- Ir a /tmp y ejecutar con bash inicio.sh.${borra_colores}"
                                read -p "- Pulsa una tecla para continuar. ctrl+c para salir." pause 
                            fi
        
                        else
                            echo -e "-${rojo} No se instala (konsole), Tendras que conectar de forma manual a la maquina $ip_maquina_remota."
                            echo -e "- Ir a /tmp y ejecutar con bash inicio.sh.${borra_colores}"
                            read -p "- Pulsa una tecla para continuar. ctrl+c para salir." pause
                        fi
                        
                    else
                        read -p "- Quieres conectar a la maquina $ip_maquina_remota ? ( S/N ) --> " sino
                        if [ $sino = "S" ] 2>/dev/null
                        then 
                            echo -e "- ${amarillo}Se va a conectar a la maquina remota, para proceder a instalar...${borra_colores}"
                            read -p "- Pulsa una tecla para continuar. ctrl+c para salir." pause
                            konsole --fullscreen -e ssh -t -p $port_maquina_remota $usuario_maquina_remota@$ip_maquina_remota 'cd /tmp;bash inicio.sh;exec \$SHELL --login'
                            clear
                            echo -e "${verde}Saliendo de la maquina $ip_maquina_remota ${borra_colores} ............."
                            sleep 3
                        else 
                            echo -e "-${rojo} Tendras que conectar de forma manual a la maquina $ip_maquina_remota."
                            echo -e "- Ir a /tmp y ejecutar con bash inicio.sh.${borra_colores}"
                            read -p "- Pulsa una tecla para continuar. ctrl+c para salir." pause 
                        fi
                    fi
                else
                    clear;
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo -e "- ${rojo}La conexion al servidor ssh de la maquina $ip_maquina_remota, NO esta disponible.${borra_colores}";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    echo "- Espara un momento ..........                                                                                                                -";
                    echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                    sleep 6;
                fi;
                
            else
                clear;
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                echo -e "- ${rojo}Los datos no son correctos, repite el proceso.............................${borra_colores}                                                                  -";
                echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
                read -p "- Pulsa ENTER para continuar " pause;
            fi;
        
        else
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            echo -e "- ${rojo}En la ruta introducida NO existen los ficheros de instalacion.............................${borra_colores}";
            echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
            read -p "- Pulsa ENTER para continuar " pause;
        fi;;
        
    80) #script de instalar_scripts
        bash instalar_scripts.sh;;
    
    90) #ayuda
        ayuda;;
                
    99) #salida
        ctrl_c;;

*) echo "";
echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
echo -e "- ${amarillo}OPCION NO DISPONIBLE EN EL MENU.    Seleccion 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 a 99        Tambien escribiendo ( 90 = ayuda )${borra_colores}              -";
echo -e "- ${amarillo}PRESIONA ENTER PARA CONTINUAR ........${borra_colores}                                                                                                      -";
echo "-----------------------------------------------------------------------------------------------------------------------------------------------";
read pause;;
esac
done
