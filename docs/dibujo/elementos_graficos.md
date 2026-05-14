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
Como elementos gráficos tenemos el uso de tablas, imagenes o archivos ".dwg"

>AGD: Usar FlameShot con los números para describir las imágenes más faci.. En imágenes debemos señalar una carpeta /imagenes dentro del modelo para dejar cualquier imagen utilizada en el modelo. USar callout para recalcar importancia que tablas, imagenes o cualquier referencia externa se debe hacer usando ./ para referenciar localmente al modelo.





## Tablas
Para crear una tabla dentro del dibujo se suelen usar dos métodos: Crearlas mediante el [editor de cuadros de Tekla Structures](../reportes/editor_cuadros.md) o utilizando **Excel + un Plugin**:

### Excel + Plugin:

El objetivo principal es que a partir de un archivo de excel, este se pueda importar mediante un plugin a nuestro dibujo.

![Excel general properties](../img/dibujo/Excel%20general%20properties.png)

Dentro de las "General properties" se puede editar la escala, la alineación al colocarlo, y si está encima o debajo de la ubicación que le asignamos. La primer carpeta al lado del renglón de "Excel file" permite abrir un archivo desde su ubicación en el ordenador, y la otra carpeta a la derecha de esta se utiliza para abrir un archivo una vez ya colocado el excel para editarlo si fuera necesario.

![Excel cell and text](../img/dibujo/Excel%20cell%20and%20text.png)

En "Cell and text properties" podemos seleccionar si deseamos que diferentes propiedades de la tabla sean las definidas en el excel o las definidas en este apartado.

Para importar la tabla hay que seguir los siguientes pasos:

1. Buscar el plugin "ExcelToDrawing" dentro de `Applications & components` en el panel vertical de la derecha y hacer click derecho para acceder a las propiedades
2. Seleccionamos la carpeta de la izquierda de la siguiente imagen: ![Excel file](../img/dibujo/Excel%20file.png) y buscamos en nuestro ordenador el archivo de extensión ".xlsx" (Excel) que tenga la tabla que queremos añadir, luego le damos click izquierdo al archivo y tocamos `Abrir`.
3. Luego en la ruta que queda en el renglón de "Excel file" debemos colocar un punto antes de la barra que separa a una carpeta dentro del modelo para que la ruta no se limite unicamente a nuestro dispositivo.
4. Clickear en `Modify`, `Apply`, `OK` y se cerrará la ventana del plugin.
5. Seleccionar nuevamente en el plugin dentro de `Applications & components` en el panel vertical de la derecha
6. Hacemos click en donde queremos que esté ubicado nuestra tabla.

![ejemplo exceltodrawing](../img/dibujo/ejemplo%20exceltodrawing.gif)
*Figura x: Ejemplo de utilización de ExcelToDrawing*

## Imágenes
Para colocar una imagen primero se debe tener en cuenta la configuración que se coloca previamente:

![Propiedades de imagen](../img/dibujo/Propiedades%20de%20imagen.png)
*Figura x: Propiedades de imagen*

- Dentro de `Type`podemos elegir si la imagen se adaptará a un recuadro que nosotros asignemos (`Scale to fit`), o si los escalamos con valores XY a partir del tamaño de nuestra imagen (`XY`)
![Tipo de imagen](../img/dibujo/Tipo%20de%20imagen.png)
>En el caso de `XY`solemos dejarlo en X:1.00 e Y:1.00 si la imagen viene con la medida que se desea.

- En `Frame` podemos asignarle o no un recuadro a la imagen, con un determinado color.

- En `File` es de donde se toma la ruta de nuestra imagen.

Para colocar una imagen se siguen los siguientes pasos:

1. Seleccionar `Image` en el ribbon de "Drawing" y se abrirá el panel de propiedades.
2. Una vez dentro del panel, clickeamos en `Browse` y seleccionamos nuestra imagen.
3. Eliminamos la ruta hasta una carpeta que se encuentre dentro de nuestra carpeta de modelo.
4. Realizamos las configuraciones que se desean y tocamos `Modify`, `Apply`, `OK`.
5. Volvemos a seleccionar `Image` y colocamos según el Type que se eligió, un solo click si es `XY` o formando un recuadro si es `Scale to fit`.

![Ejemplo colocación de imagen](../img/dibujo/Ejemplo%20colocación%20de%20imagen.gif)
*Figura x: Ejemplo colocación de imagen*



## xref - AutoCAD
En el caso de un archivo ".dwg" las propiedades y la configuración funciona de la misma manera que en las [imagenes](../dibujo/elementos_graficos.md#imágenes).

>asdas




[← Volver al inicio](index.md)