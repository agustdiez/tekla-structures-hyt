---
title: Impresión y exportación
layout: default_with_reading_time
parent: Modo dibujo
nav_order: 5
has_toc: true
---

# Impresión y exportación
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## Print drawings (PDF)
Para imprimir un dibujo debemos acceder desde el panel lateral izquierdo a `Print Drawings` o en el teclado tocando `Mayús + P`:

![ingresar a print drawings](../img/dibujo/ingresar%20a%20print%20drawings.gif)
*Figura 1: acceder a `Print Drawings`*

Dentro de la ventana que se abre podremos editar dos pestañas: [Options](impresion_exportacion.md#options) y [Line properties](impresion_exportacion.md#line-properties)

### Options

![options print drawings](../img/dibujo/options%20print%20drawings.png)
*Figura 2: configuración de `Options` dentro de `Print Drawings`*

- En `(1)` podremos guardar la configuración de las propiedades de `Options` y `Line properties`.

- En `(2)` podremos elegir si nuestra impresión será un documento "PDF", o si se ploteará en una impresora (En nuestro caso explicaremos las utilidades de la impresión "PDF").

- En `(3)` indicaremos la ruta en donde se almacenará el archivo de impresión que generemos.

- En `(4)` indicaremos el accionar del programa una vez realizada la impresión, como puede ser abrir el archivo al finalizar, abrir la carpeta contenedora al finalizar, etc.

- En `(5)` podremos darle un prefijo/sufijo al nombre con el que saldrá el archivo impreso. El valor "GX-" es inamovible, mientras que "GENERAL" dependerá del nombre que se le dió en las propiedades del "GA-drawing".

- En `(6)` configuraremos la escala, disposición del dibujo en la hoja, tamaño de la hoja, etc.

- En `(7)` obtendremos una previsualización del documento que exportaremos.

### Line properties

![line properties print drawings](../img/dibujo/line%20properties%20print%20drawings.png)
*Figura 3: configuración de `Line properties` dentro de `Print Drawings`*

- En `(1)` podremos guardar la configuración de las propiedades de `Options` y `Line properties`.

- En `(2)` tendremos la configuración de la colorimetría y el espesor de las lineas que tendrá nuestra impresión. Podemos ver que en la columna `Line thickness`, 1 = 0,1 mm. Luego la columna `Object color` representa el color que se le asignó en el dibujo dentro de nuestro programa, y en la columna `Color on output` es el color que se verá en el documento impreso.

- En `(3)` obtendremos una previsualización del documento que exportaremos.

En "Line properties" debemos tener como lineamiento el archivo de [puntas](../../ref/Dibujo/Impresión_Exportación/HYTECH.ctb) que nos otorga la empresa, llamado "Hytech.ctb". Este tiene las siguientes propiedades:

![Hytech.ctb lineamiento](../img/dibujo/Hytech.ctb%20lineamiento.png)
*Figura 4: configuración de `Line properties` dentro de `Print Drawings`*

En base a este lineamiento, adaptamos la impresión de nuestro documento a los espesores con los colores propuestos (teniendo en cuenta nuevamente que 1 = 0,1 mm), y la preconfiguración de esto es "Hytech_ctb".

![HYTECH.ctb tekla structures](../img/dibujo/HYTECH.ctb%20tekla%20structures.png)
*Figura 5: adaptación de las puntas a nuestro documento*

Por último haremos click en `Print` para realizar nuestra impresión.

## Export drawings (.dwg)

Para exportar un dibujo como archivo ".dwg" debemos acceder desde el panel lateral izquierdo a `Export drawings`:

![acceder a export drawing](../img/dibujo/acceder%20a%20export%20drawing.gif)
*Figura 6: acceder a `Export Drawings`*

Dentro de la ventana que se abre podremos editar dos pestañas: [Options](impresion_exportacion.md#options-1) y [Layer rules](impresion_exportacion.md#layer-rules)

### Options

![exportar drawings](../img/dibujo/exportar%20drawings.png)
*Figura 7: `Options` dentro de `Export Drawings`*

- En `(1)` podemos guardar la configuración que se cree de un ploteo, este archivo se guardará en la carpeta "attributes" de nuestro modelo con la extensión ".dwgsetting".

{: .warning}
> La configuración guardada suele tener incovenientes, ya que al momento de abrir el dwg en el layout su aspecto está rotado respecto la hoja de fondo. Siempre es recomendable revisar el archivo exportado, y en su defecto modificar lo que sea necesario.

- En `(2)` podemos designar la ruta donde queremos que se almacene nuestro archivo exportado, y si queremos abrir la carpeta de destino al finalizar dicha exportación.

- En `(3)` podremos darle un prefijo/sufijo al nombre con el que saldrá el archivo impreso. El valor "GX-" es inamovible, mientras que "GENERAL" dependerá del nombre que se le dió en las propiedades del "GA-drawing".

- En `(4)` podemos elegir si exportaremos el archivo con extensión  ".dwg" o en ".dxf" y en que versión de "AutoCAD" estará nuestro archivo de exportación. También tenemos las `model space coordinates`, las cuales pueden ser "Local" (las que uno le asigna a un proyecto. En nuestro caso el z=+100.000) o las "Model" (X,Y,Z por default).

- En `(5)` tenemos 3 casillas para seleccionar:
    - Si queremos embeber las imagenes dentro del archivo marcaremos esta casilla (recomendado). Si no se marca, las imagenes quedarán sueltas en la misma ruta donde se encuentra el archivo, y este las buscará desde allí.
    - Si queremos que los dibujos que exportemos no sean un bloque dentro de AutoCAD debemos seleccionar esta casilla (recomendado).
    - Si marcamos la casilla `Drawing as snapshot to CAD model space` las vistas del dibujo irán al model de AutoCAD, sin pasar por el layout. Permite darle una escala al dibujo al tildar la casilla e ignora las coordenadas del modelo.

- En `(6)` podremos exportar el archivo o abrir una previsualización del mismo.

### Layer rules
Dentro de la pestaña `Layer rules` decidiremos a que layer dentro del archivo que exportemos pertenecerá cada elemento.

![exportar drawings layer rules](../img/dibujo/exportar%20drawings%20layer%20rules.png)
*Figura 8: `Layer rules` dentro de `Export Drawings`*

- En `(1)` podemos guardar la configuración que se cree de un ploteo, este archivo se guardará en la carpeta "attributes" de nuestro modelo con la extensión ".dwgsetting".

{: .warning}
> La configuración guardada suele tener incovenientes, ya que al momento de abrir el dwg en el layout su aspecto está rotado respecto la hoja de fondo. Siempre es recomendable revisar el archivo exportado, y en su defecto modificar lo que sea necesario.

- En `(2)` podremos traer desde un archivo ".dwg" layers que estén creados dentro de este, para ser usados en (3).

- En `(3)` tenemos varias columnas para editar:
    - **Include**: al marcar la casilla filtra si se incluye o no la condición para los objetos.

    - **Objects**: seleccionamos que objetos colocaremos en determinado layer. Puede realizarse tanto colocando "All" y luego aplicando un filtro en "Object filtering" o seleccionando una categoría especifica en esta pestaña. Las opciones de selección que tenemos son:
    ![layer rules objects](../img/dibujo/layer%20rules%20objects.png)

    - **Presentation filtering**: podremos filtrar los elementos como lineas, textos, hatches, etc. según cuantos de estos hay en el valor que hayamos colocado en "Object".

    - **Object filtering**: aquí se puede aplicar algún [filtro de objectos](./vistas_dibujo.md#filter), a los objectos seleccionados en "Object".

    - **Target layer**: Aquí elegiremos a que layer pertenercerán los objetos que cumplan con las condiciones de las columnas anteriores.

    - **Color/Line style/Line weight**: aquí decidiremos si los valores de estas columnas estarán determinados por el layer dentro del ".dwg" ![parámetros según dwg](../img/dibujo/parámetros%20según%20dwg.png) o si están dados por los parámetros dentro de nuestro programa ![parámetros según tekla](../img/dibujo/parámetros%20según%20tekla.png)

    - **Paper space**: En esta casilla podemos elegir si los objetos seleccionados irán al "model" o al "layout" de AutoCAD.

- En `(4)` podremos elegir si queremos agregar, eliminar o copiar alguna de las condiciones para los objetos, o si queremos darle un orden inferior o superior con `Move up/down`.

- En `(5)` podremos exportar o abrir una previsualización del archivo.

    {: .note}
    > Para la previsualización del archivo se abrirá una ventana donde nos obligará a seleccionar `Refresh preview` para visualizarlo, no puede hacerse zoom pero se apreciarán los colores que estarán en el dwg.


{: .highlight}
> [Lineamientos](../../ref/Dibujo/Impresión_Exportación/PR-O-M-008-r6%20Dibujos%20e%20Impresiones.pdf)








[← Volver al inicio](index.md)