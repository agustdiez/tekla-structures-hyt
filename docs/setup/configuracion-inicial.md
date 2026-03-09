---
title: Configuración inicial
layout: default_with_reading_time
parent: Setup - Primeros pasos
nav_order: 2
has_toc: true
---

# Configuración inicial
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}


[← Volver al inicio](index.md)

## Inicio del programa

Primero, deberá validarse que el programa fue instalado correctamente ingresando al mismo y pudiendo visualizar.

Al abrirse, el programa solicita hacer *login* en Trimble. Crear cuenta en caso de no contar con una y compartirla con IT o el coordinador Civil para que se sume el nuevo usuario a la carpeta compartida.

## Cliente de OneDrive 


El departamento hace uso de una carpeta civil de OneDrive donde se guardan los modelos. Se debe solicitar acceso en caso de no contar con el mismo al coordinador civil o lider de disciplina.

La carpeta ordena a los modelos por proyecto y cuenta con una carpeta con todas las configuraciones de la empresa (FIRM).

Deberá validarse lo siguiente previo a seguir:

1. Validar estar invitado y agregar la carpeta al cliente de OneDrive ([Agregar atajo a carpeta](https://support.microsoft.com/en-us/office/add-shortcuts-to-shared-folders-in-onedrive-d66b1347-99b7-4470-9360-ffc048d35a33))
2. Darle tiempo al cliente para mapear todos los archivos del directorio (puede demorar bastante)
3. Una vez que en ajustes del cliente se puedan seleccionar carpetas, buscar "Mantener en este dispositivo" la carpeta vinculada a ajustes del programa de la empresa (FIRM) y todos aquellos proyectos que se hará uso. El resto puede quedar en "Liberar espacio"

![Posibilidades Onedrive](../img/setup/onedrive_link.png)
*Figura 1: las dos posibilidades de tener archivos en el cliente de OneDrive*

{: .warning}
> Las carpetas compartidas de OneDrive **NO** se borran para dejar de verlas en el explorador de Windows ya que todo el equipo cuenta con permisos de escritura. Esto quiere decir que un archivo que se borra en la carpeta, todo el equipo ve reflejado los mismos cambios.
>
>En caso de no querer ver ciertos modelos, dejar de sincronizar la carpeta o dejar en modo "Liberar espacio" para que no ocupe espacio del disco C:/

## Manejo de licencias


Las licencias podrán ser ancladas al servidor o con suscripción. Debe validarse con el coordinador de IT que su usuario sea sumado al equipo e informar las licencias que están disponibles,

No se indica mayor detalle en este instructivo ya que depende en cada momento las licencias disponibles. Las asignaciones de licencias no ancladas al servidor se realizan por el portal provisto por Trimble

{: .important}
> Administración de licencias
>
>Link: admin.account.tekla.com

## Archivos de inicialización

El TEKLA debe poder llamar a una carpeta en común de la empresa, donde quedan guardadas configuraciones personalizadas, rótulos de empresa, imágenes, reportes, etc. 

Todo el equipo debe poder visualizar la misma información, por lo que para eso el programa cuenta con un archivo de inicialización que debe pisarse al existente, para que cada vez que abra el programa haga el *mapeo* de ciertas propiedades a carpetas compartidas.


### Definición de variable de entorno


Actualmente la empresa trabaja los modelos del programa en un servidor de Onedrive. Esto ocasiona que los directorios de cada usuario sean distintos, ya que el cliente de Onedrive se instala por usuario y no por sistema.

Por lo tanto, debemos definir una variable de entorno **%TEKLA%**

{: .note}
>Una variable de entorno es una **variable dinámica** que puede afectar al comportamiento de los procesos en ejecución en un ordenador.
\
\
Son parte del entorno en el que se ejecuta un proceso. Por ejemplo, un proceso en ejecución puede consultar el valor de la variable de entorno TEMP para descubrir una ubicación adecuada para almacenar archivos temporales, o la variable HOME o USERPROFILE para encontrar la estructura de directorios propiedad del usuario que ejecuta el proceso.

1. Desde Configuracion/Settings ir a editar las variables locales del sistema

![variables_entono_sistema](../img/setup/variables_entorno.png)
*Figura 2: Acceso a variables de entorno*

2. Crear la variable y llamarla TEKLA. La ruta a colocar es personal y depende de cada PC en donde esté ubicada la carpeta TEKLA de la carpeta compartida
![variables_entono_sistema](../img/setup/asignacion_variable.png)
*Figura 3: Acceso a variables de entorno*

{: .highlight}
>Realizados estos dos pasos, Windows tomará %TEKLA% como un path que será común para todo el equipo.

{: .warning}
> No modificar las variables del sistema existentes.


### Copiado de archivo .ini

Dentro de la carpeta FIRM se encuentra el archivo user.ini a tomar

{: .note}
> Un archivo INI es un archivo de texto simple usado comúnmente en informática y programación para almacenar configuraciones de software. Es un formato sencillo y ampliamente compatible que organiza la información en secciones y pares clave-valor. Puedes pensar en él como una forma estructurada de **guardar las preferencias para diversos aspectos de un programa**.

1. Copiar el archivo original user.ini

{: .important}
>#Ruta Origen
%TEKLA%\STD\INI FILES\user.ini

2. Pegar el archivo en el siguiente directorio. El año dependerá de la versión de TEKLA que se trate. La carpeta AppData está oculta, por lo que debe habilitarse en Windows la visión de carpetas ocultas.

{: .note}
>#Ruta Destino
C:\Users\<USUARIO>\AppData\Local\Trimble\Tekla Structures\2022.0\UserSettings

![elementos_ocultos](../img/setup/elementos_ocultos.png)
*Figura 4: Permitir elementos ocultos*

{: .warning}
> No modificar el archivo .ini de la ruta del directorio de la empresa


{: .highlight}
>Al pisar el archivo, todas las opciones avanzadas que son vistas por los miembros del equipo son las mismas, pudiendo acceder a las mismas bases de datos, reportes, templates, etc.

## Verificación

Para verificar tener todo correctamente seteado, basta con abrir el programa en "New Model" ya se deberán visualizar los templates de proyecto disponibles, los cuáles

Cualquier desvío o consulta particular, referir al [FAQ](../faq/faq.md) o al lider de disciplina.

## Próximos Pasos

- Leer el apartado de generalidades, para ver como se trabaja internamente la maqueta en la empresa y que herramientas utiliza el equipo Civil.
- Comenzar a modelar con auxilio de esta guía. Referir al [Índice](../index.md)


