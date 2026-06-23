---
title: Diseño de conexiones
layout: default_with_reading_time
parent: Acero
nav_order: 2
has_toc: true
---

# Conexiones
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## ¿Por qué usarlas?

Si bien TEKLA permite de forma nativa plantear una conexión/unión con todas las herramientas descriptas en [Perfiles](perfiles.md), para agilizar su creación siempre deben usarse componente.

>El componente de TEKLA es análogo a las macros de un libro de Excel. Se les da una serie de parámetros y por detrás ejecutan una rutina que modela automáticamente cierta solución en base a los datos de entrada.

Por lo tanto, el proceso consta en:

1. Identificar componente que nos aproxime a lo que se desea resolver (por ejemplo, una chapa de nudo de reticulado).
2. Encontrar el componente adecuado. Muchas veces puede haber más de uno que resuelva el problema, y se diferencian principalmente en el grado de complejidad del detalle.
3. Leer la documentación para entender cómo utilizar el componente.
4. Setear todas las partes creadas por el componente de acuerdo con los estándares descriptos en [Perfiles](perfiles.md) a nivel materiales y atributos requeridos.
5. Realizar modificaciones sobre los objetos como `Partes` en todo aquello donde el componente "no llega". Por ejemplo, si la chapa de nudo se precisa en otra dimensión arbitraria y no es posible setearse en el componente, deberá agrandarse la placa a mano.


### Alternar entre selección de componentes y partes

(foto del selector)

Una vez modelado el componente con las partes involucradas, se deberá tener conocimiento del uso de selector entre `Parte` y `Componente`. Esto se hace a través del ribbon que se ve debajo.

Los componentes si están correctamente modelados figurarán en verde, en amarillo si hay alguna advertencia (por ejemplo, no cumplir distancia a borde) y en rojo si directamente hay un error en el modelado.

En caso de tener que refinar algo por fuera del alcance del componente, deberá pasarse al selector de `Parte` y modificar manualmente las partes involucradas.



---

## Componentes de acero

Se detallan a continuación distintos componentes utilizados dentro de la empresa para soluciones habituales.

El cómo usar componente se describe con extenso detalle en el siguiente documento: [Componentes del sistema](../manuales/TS_COMP_2024_es_Componentes%20de%20sistema.pdf).

### Placa base

En función de lo comentado en [Diseño de anclajes](../hormigon/elementos.md#diseño-de-anclajes), se aconseja el uso del **componente 1047** ya que viene con los anclajes correctamente modelado. Se presentan los otros con los que cuenta el programa en la siguiente tabla:

| ID | Componente | Descripción | Imagen | Comentario |
|----|------------|-------------|--------|------------|
| 55 | Columna a viga | Placa base |![55](../img/acero/id_55.png) | Placa base a estructura metálica |
| 1004 | Placa base | Placa base |![1004](../img/acero/id_1004.png) | Sólo permite un agujero para colado de grout |
| 1042 | Placa Base | Placa base | ![1042](../img/acero/id_1042.png) | |
| 1047 | Placa base | Placa base U.S. |![1047](../img/acero/id_1047.png) | **El que debe utilizarse en lo posible** .Permite girar el taco de corte.  |

### Uniones

| ID | Componente | Descripción | Imagen | Comentario |
|----|------------|-------------|--------|------------|
| **11** | Arriostramiento | Cartela Atornillada |![11](../img/acero/id_11.png) | Para chapas de nudo a viga o columna|
| **14** | Viga a viga | Placas de unión | ![14](../img/acero/id_14.png)|Unión entre viga o unión viga-columna a momento |
| **19** | Arriostramiento | Cruz arriostramiento |![19](../img/acero/id_19.png) | Crea bulones en barras. Hay que tener previamente la cartela |
| **31** | Viga a columna | Viga soldada a columna |![31](../img/acero/id_31.png) | |
| **40** | Viga a Columna | Cantonera |![40](../img/acero/id_40.png) | |
| **42** | Viga a Columna | Banderita con rigidizadores |![42](../img/acero/id_42.png) | |
| **42** | Empalme | Empalme con cubrejuntas |![42_1](../img/acero/id_42_1.png) | |
| **44** | Viga a viga | Aplica recortes en uniones entre vigas |![44](../img/acero/id_44.png) | |
| **87** | Poste a viga | Placa doble montante |![87](../img/acero/id_87.png) | |
| **101** | Viga a Viga | Unión a alma |![101](../img/acero/id_101.png) | |
| **106** | Viga a Viga | Cantonera cumbrera |![106](../img/acero/id_106.png) | |
| **119** | Viga a Columna | Stub desde columna |![119](../img/acero/id_119.png) | |
| **132** | Empalme | Cubrejunta  |![132](../img/acero/id_132.png) | |
| **134** | Viga a Columna | Unión a momento abulonada |![134](../img/acero/id_134.png) | |
| **141** | Viga a Columna | Ángulo de unión | ![141](../img/acero/id_141.png)| 1- Se pueden abulonar en ambas alas de los ángulos |
| **144** | Viga a Columna | Placa de unión | ![144](../img/acero/id_144.png)| |
| **149** | Arriostramiento | Arriostramiento para dos diagonales |![149](../img/acero/id_149.png) | |
| **185** | Viga a Viga | Banderita extendida |![185](../img/acero/id_185.png) | |
| **187** | Viga a Columna | Banderita extendida |![187](../img/acero/id_187.png) | |

### Geometría

| ID | Componente | Descripción | Imagen | Referencia |
|----|------------|-------------|--------|------------|
| **10** | Corte 3D | Para recortar partes arbitrarias |![10](../img/acero/id_10.png) | |
| **1003** | Rigidizadores en perfiles | Rigidizadores |![1003](../img/acero/id_1003.png) ![1003_1](../img/acero/id_1003_1.png) | Crea 1 o 2 rigidizadores, de ala a ala |
| **1024** | Barandas | Barandilla | ![1024](../img/acero/id_1024.png)| No permite mover verticalmente el guardapie |
| **1034** | Rigidizadores genérico | Rigidizadores | ![1034](../img/acero/id_1034.png)| Permite crear varios rigidizadores con el mismo componente |
| **1041** | Rigidizadores PG | Rigidizadores |![1041](../img/acero/id_1041.png) | |
| **S86** | Componente personalizado | Montantes - Barandillas - Placas inferiores |![S86](../img/acero/id_s86.png) | Este componente utiliza otros 3 componentes: uno para los postes (S76), uno para el pasamanos y guardarodilla (S77) y otro para el guardapie (S75) |

## U.S. Base Plate (1047)
El componente es utilizado para el diseño de placas base, se utiliza este componente porque permite generar rigidizadores, agregar taco de corte y generar uniones de placas base, abulonadas o con anclajes:

![SELECTOR](../img/acero/1047_SELECTOR.png)

{: .warning}
> El componente permite realizar configuraciones con hasta 8 rigidizadores. Si se quisieran agregar mas se debe de explotar los componentes y duplicar los rigidizadores



### Atributos a completar
1. `Picture`: contiene el recorte de los rigidizadores  y su distancia a los bordes de la Placa Base.
![Pestaña PROFILE](../img/acero/1047_PROFILE.png)
*Figura 1: Pestaña profile del componente*

2. `Parts`: Define las partes a modelar, como la placa base, los rigidizadores, el taco de corte. Y modificar atributso respecto a su tamaño, material, clase  y nombre. como comentario adicional, se puede completar la pestaña coment y finish.
![Pestaña PARTS](../img/acero/1047_PARTS.png) 
*Figura 2: Pestaña parts del componente*
    1. `Plate`: Dimensiones de la placa base, espesor largo y ancho
    2. `Stiffeners`: Dimensiones de los rigidizadores, espesor largo y ancho
    3. `Key profile`: Permite generar un taco de corte automatico, se puede seleccionar perfiles del catalogo de materiales. 
    4. `Dimensiones`: Material y nombre y clase del los puntos 1  / 2  /  3

3. Las pestañas `Parameters` y `General` no suelen utilizarse en este componente
4. `Bolts`: Permite la configuración de bulones
![Pestaña BOLTS](../img/acero/1047_BOLTS.png)
*Figura 3: Pestaña Bolts del componente*
    1. `Bolts configuration`: permite la configuración de los bulones, tanto su tamaño como el standar del mismo
    2. `Separación entre bulones`: Permite modificar la [separación entre bulones](../faq/faq.md#en-el-componente-1047-no-aparecen-mis-bulones) y su cantidad en ambos ejes de la PB.
    3. `Separación a borde` Permite modificar la separación a borde de los bulones/anclajes a la placa base.

5. `Stiffeners`: permite la configuración de rigidizadores, su posición y cantidad a visualizar. Pueden desplazarse de las alas o almas del perfil estableciendo distancias en los recuadros blancos. 
![Pestaña STIFFENERS](../img/acero/1047_STIFFENERS.png)
*Figura 4: Pestaña Stiffeners del componente*
El recuadro superior `Stiffeners positions`permite generar los rigidizadores que se indiquen con su numero de posición. 
{: .note}
>Solo se pueden utilizar los 8 mostrados en la imagen, si se quieren utilizar más, se recomienda explotar el componente y copiar los rigidizadores que se precisen.

6. `Anchor rods`: permite la configuración de anclajes

![Pestaña ANCHOR RODS](../img/acero/1047_ANCHOR_RODS.png)
*Figura 5: Pestaña Anchor rods del componente*
    1. `Rod profile`: Permite elegir el perfil de anclaje, para anclajes se recomienda usar los perfiles metricos: 
    ![ROD PROFILE](../img/acero/1047_ROD_PROFILE.png)
    2. `Nut profile`: Perfil de la tuerca, se recomienda usar los siguientes perfiles:
    ![WASHER PROFILE](../img/acero/1047_NUT_PROFILE.png)
    3. `Washer profile`: Perfil de la arandela, 
    ![WASHER PROFILE](../img/acero/1047_WASHER_PROFILE.png)
    4. `Plate Washer`: Perfil cuadrado de la arandela, este se modifica agregando medidas a los campos que aparecen vacios por defecto. Se completa el largo ancho y espesor.
    5. `Grout`: Se completa el espesor del mismo, se modifica según MC.
    6. `Propiedades`: Material, nombre y clase de los puntos 1 al 5, para un correcto desarollo verificar nombres y clases de [acero](../acero/perfiles.md#atributos-a-modelar) y de [hormigón](../hormigon/elementos.md#atributos-a-modelar)
    7. `Largo de anclaje`: Largo total del anclaje, se modifica según MC
    8. `Proyección sobre placa`: Largo total de la proyección sobre la placa base, se modifica según MC.
    9. `Creación de partes`: Modifica la creación de partes, se recomienda seleccionar `YES` a las partes que se crean según los puntos 1 a 5.

7. Las pestañas `Analisis` y `Extra plates`  no solemos usarla en este componente

[Planilla](../ref/Placa%20Base/PB_VERIFICACIONES.xlsx)








[← Volver al inicio](index.md)