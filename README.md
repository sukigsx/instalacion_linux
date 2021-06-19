---------
## Instalacion_software
* Script desarrollado en bash
*********************************************
* Diseñado por SUKIGSX
* Contacto: reparaciondesistemas.com@gmail.com
*********************************************

Esta pensado para la instalacion de software de forma automatizada.
con este script podras:
- Actualizar el sistema en entornos gnome y plasma.
- Instalartelo en tu maquina local.
- Poder instalar otras maquinas de forma remota por ssh.
- Instalacion de repositorios.
- Instalar software externo a los repositorios de forma automatica.
- Buscar equipos por tu red.
- Conectar a equipo de red por ssh.
- Ejecuta una terminal de comandos.
- Instalacion en equipos remotos.
 
### INSTALACION:
#### Clonar el repositorio, desde la terminal.
     git clone https://github.com/sukigsx/Instalacion-software.git

#### Descargarte el zip
     Descomprimir, dar permisos de ejecucion a todos los ficheros ( chmod +x * ).

#### Instalar el paquete deb, desde el terminal.
     Instalar ejecutar ---> sudo dpkg -i Instalacion-software.deb
     Desistalar ejecutar -> sudo dpkg -r Instalacion-software
##### Si tienes una utilidad grafica de instalacion de paquetes, solo tendras que hacer doble click y listo.
     Si lo has instalado desde el paquete deb:
     Tendras un acceso directo en tu mennu de inicio en utilidades y en sistema.
     
#### Ejecutar
     Una vez clonado el repositorio y con permisos de ejecucion.
     ./inicio.sukigsx
 
### NOTA.
     Le voy poniendo cada poco tiempo nuevas funcionalidades y nuevo software que me parece acto 
     para nuestras distribuciones de linux y que considero de utilidad.
