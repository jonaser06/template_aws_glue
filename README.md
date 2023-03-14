# Proyecto de AWS Glue
Este proyecto es una plantilla básica para crear y ejecutar trabajos en AWS Glue localmente, usando Docker y Docker Compose.

## Requisitos
Antes de empezar, asegúrate de tener instalado lo siguiente en tu máquina:
- Docker
- Docker Compose
## Configuración
- 1. Clona el repositorio en tu máquina local:
- 2. Asegúrate de estar en la raíz del proyecto:
- 3. Construye la imagen de Docker para AWS Glue:
        make build

## Uso
## Ejecución de un trabajo

- Crea una carpeta dentro de la carpeta jobs con el nombre de tu trabajo. Por ejemplo:
        mkdir jobs/mi_trabajo
Este comando ejecutará el trabajo mi_trabajo dentro del contenedor de Docker de AWS Glue.
- Detén los contenedores de Docker: Cuando hayas terminado de trabajar con AWS Glue, puedes detener los contenedores utilizando el siguiente comando:
        make stop
Este comando detendrá y eliminará los contenedores de Docker utilizados por el proyecto.