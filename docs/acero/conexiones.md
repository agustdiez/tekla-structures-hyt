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

En función de lo comentado en [Diseño de anclajes](../hormigon/elementos.md#diseño-de-anclajes), se aconseja el uso del componente 1047 ya que viene con los anclajes correctamente modelado. Se presentan los otros con los que cuenta el programa en la siguiente tabla:

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


[← Volver al inicio](index.md)