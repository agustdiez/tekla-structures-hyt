---
title: Elementos gráficos
layout: default_with_reading_time
parent: Modo dibujo
nav_order: 3
has_toc: true
---

# Elementos gráficos
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## Generalidades
Como elementos gráficos tenemos el uso de [tablas](../dibujo/elementos_graficos.md#tablas), [imagenes](../dibujo/elementos_graficos.md#imágenes) o [Xref - AutoCAD](../dibujo/elementos_graficos.md#xref---autocad).

{: .note}
>Para el uso de estos elementos tener en cuenta que se debe crear una carpeta dentro del modelo (como puede ser `/imagenes`, `/Excel`, o generalizando `/Xref`) y siempre eliminar la ruta de referencia al colocar cualquier archivo hasta dicha carpeta local.
>
> **Esto es sumamente importante para que la referencia sea vista por alguien más del equipo si abre el modelo**

## Tablas
Para crear una tabla dentro del dibujo se suelen usar dos métodos: Crearlas mediante el [editor de cuadros de Tekla Structures](../reportes/editor_cuadros.md) o utilizando **Excel + un Plugin**. Para biblioteca de referencias a instalar referir a [Extensiones](../setup/configuracion-inicial.md#instalación-de-extensiones):

### Excel + Plugin

El objetivo principal es que a partir de un archivo de excel, este se pueda importar mediante un plugin a nuestro dibujo. 

{: .note}
>El [plugin](../ref/ExcelToDrawing_V2.0.tsep) podrá ser descargado desde [Tekla Warehouse](https://warehouse.tekla.com/#/), más precisamente en este caso desde [Excel to drawing](https://warehouse.tekla.com/#/packages/u05d51531-1b65-4085-a7eb-422e97dd3b06), debiendo buscar la versión del plugin que se adapte a la versión que se tenga de Tekla Structures. Para más información ver [Instalación de extensiones](../setup/configuracion-inicial.md#instalación-de-extensiones).

![Excel general properties](../img/dibujo/Excel%20general%20properties.png)

- Dentro de las "General properties" la primer carpeta al lado del renglón de "Excel file" `(2)` permite abrir un archivo desde su ubicación en el ordenador, y la otra carpeta a la derecha `(3)` se utiliza para abrir un archivo una vez ya colocado el excel para editarlo si fuera necesario. 
- Dentro de `(4)` se puede editar la escala, la alineación al colocarlo, y si está encima o debajo de la ubicación que le asignamos.

![Excel cell and text](../img/dibujo/Excel%20cell%20and%20text.png)

- En "Cell and text properties" podemos seleccionar si deseamos que diferentes propiedades de la tabla en `(1)`, sean las definidas en el excel o las definidas en este apartado `(2)`. 
- En `(3)` si se decide configurar el tamaño de los parámetros desde aquí se deberá colocar el valor que se desee.

Para importar una tabla hay que seguir los siguientes pasos:

1. Una vez descargado, buscar el plugin "ExcelToDrawing" dentro de `Applications & components` en el panel vertical de la derecha y hacer click derecho para acceder a las propiedades
2. Seleccionamos la carpeta de la izquierda de la siguiente imagen: ![Excel file](../img/dibujo/Excel%20file.png) y buscamos en nuestro ordenador el archivo de extensión ".xlsx" (Excel) que tenga la tabla que queremos añadir, luego le damos click izquierdo al archivo y tocamos `Abrir`.
3. Luego en la ruta que queda en el renglón de "Excel file" debemos colocar un punto antes de la barra que separa a una carpeta dentro del modelo para que la ruta no se limite unicamente a nuestro dispositivo.
4. Clickear en `Modify`, `Apply`, `OK` y se cerrará la ventana del plugin.
5. Seleccionar nuevamente en el plugin dentro de `Applications & components` en el panel vertical de la derecha.
6. Hacemos click en donde queremos que esté ubicado nuestra tabla.

![ejemplo exceltodrawing](../img/dibujo/ejemplo%20exceltodrawing.gif)
*Figura 1: Ejemplo de utilización de ExcelToDrawing*

## Imágenes
Para colocar una imagen primero se debe tener en cuenta la configuración que se coloca previamente:

![Propiedades de imagen](../img/dibujo/Propiedades%20de%20imagen.png)
*Figura 2: Propiedades de imagen*

- Dentro de `(1)` en la parte de `Type`podemos elegir si la imagen se adaptará a un recuadro que nosotros asignemos (`Scale to fit`), o si los escalamos con valores XY a partir del tamaño de nuestra imagen (`XY`)
![Tipo de imagen](../img/dibujo/Tipo%20de%20imagen.png)

{: .note}
>En el caso de `XY`solemos dejarlo en X:1.00 e Y:1.00 si la imagen viene con la medida que se desea.

- Luego también dentro de `(1)`en `Frame` podemos asignarle o no un recuadro a la imagen, con un determinado color.

- `(2)`: En `File` es de donde se toma la ruta de nuestra imagen.

Para colocar una imagen se siguen los siguientes pasos:

1. Seleccionar `Image` en el ribbon de "Drawing" y se abrirá el panel de propiedades.
2. Una vez dentro del panel, clickeamos en `Browse` y seleccionamos nuestra imagen.
3. Eliminamos la ruta hasta una carpeta que se encuentre dentro de nuestra carpeta de modelo.
4. Realizamos las configuraciones que se desean y tocamos `Modify`, `Apply`, `OK`.
5. Volvemos a seleccionar `Image` y colocamos según el Type que se eligió, un solo click si es `XY` o formando un recuadro si es `Scale to fit`.

![Ejemplo colocación de imagen](../img/dibujo/Ejemplo%20colocación%20de%20imagen.gif)
*Figura 3: Ejemplo colocación de imagen*

{: .warning}
> Dentro de nuestro modelo es recomendable tener una carpeta llamada `/imagenes`, para almacenar las imagenes que se utilicen en el dibujo. La idea de esto es que en cualquier imagen que coloquemos, la ruta sea relativa para cualquier persona que abra nuestro modelo, por lo que esta deberá comenzar con `./imagenes`.

## xref - AutoCAD
En el caso de un archivo ".dwg" las propiedades y la configuración funciona de la misma manera que en las [imagenes](../dibujo/elementos_graficos.md#imágenes).

{: .warning}
> - Tener en cuenta que esta importación toma todo el dibujo dentro del `MODEL` de AutoCAD como una imagen, sin posibilidad de hacer modificaciones desde nuestro programa.
> - Es recomendable que el archivo de origen de AutoCAD esté lo más "limpio" posible para evitar ralentizar la carga del archivo, pudiendo usarse el comando "purge" o cualquier herramienta útil para esto.

Lo ideal con los `.dwg` es siempre post-procesarlos o dibujar exclusivamente lo necesario para el dibujo, para que al colocarlo en el dibujo no sature y pueda hacer inusable el programa.

{: .note}
> Cualquier cosa que se esté cargando como un dibujo menor es recomendable hacerlo desde el [editor de simbolos](../dibujo/marcas_simbolos_notas.md#editor-de-símbolos).


[← Volver al inicio](index.md)