---------
## Instalacion_software
* Script desarrollado en bash
*********************************************
* Diseñado por SUKIGSX
* Contacto: sukigsx.scripts@gmail.com
*********************************************

Este script esta pensado para la instalacion de software de forma automatizada.

- Actualizar el sistema en entornos gnome y plasma.
- Instalartelo en tu maquina local.
- Poder instalar otras maquinas de forma remota por ssh.
- Instalacion de repositorios.
- Instalar software externo a los repositorios de forma automatica.
- Buscar equipos por tu red.
- Conectar a equipo de red por ssh.
- Ejecuta una terminal de comandos.
- Instalacion en equipos remotos.
 
### INSTALACION.

#### Descargar e instalar el paquete DEB.
- [Descargar el paque DEB](https://github.com/sukigsx/Instalacion-software/raw/main/Instalacion-software.deb). Y lo puedes instalar con tu forma habitual.
- Instalar paquete DEB desde linea de comando en la terminal,lo descarga, lo instala y despues borra el paquete DEB.

      wget https://github.com/sukigsx/Instalacion-software/raw/main/Instalacion-software.deb; sudo dpkg -i Instalacion-software.deb; rm Instalacion-software.deb
      
 - Clonar el repositorio, desde la terminal. Dar permisos de ejecucion a todos los ficheros.
 
       git clone https://github.com/sukigsx/Instalacion-software.git
     
#### Desistalar el paquete deb, desde el terminal.
     sudo dpkg -r Instalacion-software

### Forma de ejecucion.
- Si has clonado el repositorio y con permisos de ejecucion.

      ./inicio.sukigsx
- Si has instalado el paquete. Lo encontraras en el lanzador.
     
 
### NOTA.
Le voy poniendo cada poco tiempo nuevas funcionalidades y nuevo software que me parece acto 
para nuestras distribuciones de linux y que considero de utilidad.
