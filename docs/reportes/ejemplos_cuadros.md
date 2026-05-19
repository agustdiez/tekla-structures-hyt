---
title: Ejemplos de cuadros
layout: default_with_reading_time
parent: Cuadros y Reportes
nav_order: 3
has_toc: true
---

# Ejemplos de cuadros
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## 1. Introducción

Los siguientes ejemplos buscan ejemplificar el armado de ciertos cuadros, siguiendo la lógica para crearlos.

En ese proceso siempre estaremos haciendo lo siguiente:

1. Identificar una **necesidad** (que bien puede ser para validar lo modelado, sacar cantidades, sacar información, etc.). Hacerse la pregunta correcta es la parte más importante del proceso, para entender que puede hacerse con el programa.
2. Identificar **los atributos necesarios** para hacerlo. Para ello, referir a la guía de atributos dada en [Documentación oficial](../index.md#documentación-oficial)
3. **Armar el .tpl** con los elementos correctos en función de las partes involucradas. Ver [Editor de cuadros](editor_cuadros.md) para diferenciar los tipos de fila dentro del cuadro.
4. Comenzar a probar el cuadro dentro del programa hasta obtener lo buscado.

Los cuadros enunciados a modo de ejemplo se encuentran para descargar al fin de la explicación.

   
---
## 2. Cuadro de coordenadas

>Se busca extraer una tabla de coordenadas y niveles de todas las fundaciones de un modelo, ordenándolas, en este caso, primero por Área de Ubicación y luego por Nombre de Fundación. Este Ejemplo se encuentra con el nombre de "SAC_COORDS_INY QUIMICOS.tpl":

!["SAC_COORDS_INY QUIMICOS.tpl"](..\img\hormigon\TABLA-COORD.png)

1. Como nos interesa tomar fundaciones, debemos utilizar todas las PARTES con NAME: "FUNDACIONES" a nivel de ROW. Ver [Editor de cuadros](editor_cuadros.md) y tipos de fila.
2. ¿Qué atributos necesitamos? En este caso necesitamos Coordenadas Planimétricas, Niveles, Cantidades y otros atributos, que deberán ser definidos por el usuario, se utilizarán los siguientes: 
![ATRIB](..\img\hormigon\TABLA-COORD-ATRIB.png)

Los "USERDEFINED.USER_FIELD_1/2/3" son configurados en el entorno modelo, y corresponden a ubicación y numeración de Área, podrán ser cargados en "Atributos definidos por el usuario"/"Campos usuario":

![ATRIB](..\img\hormigon\TABLA-COORD-USUARIO-01.png)

3. Entonces, debemos iterar por todas las PARTES con nombre "FUNDACIONES" y generando como salida las coordenadas en X e Y, niveles y campos de ususario de cada una.

4. A su vez, debemos ordenar por tag a las distintas PARTES. Hacemos uso de los datos dentro de la fila por ese atributo (Ver apartado 2.3. Observación:)

## 2.1. En el Editor de Cuadros 

1. Al abrir el cuadro nos encontraremos con esta configuración:

![EDITOR](..\img\hormigon\TABLA-COORD-EDIT-01.png)

En ROW están configurados todos los atributos correspondientes a cada fundación, vistos en el punto 2.2 anterior, cada uno enmascarado con un Campo de Valor diferenciado:

![CAMPO1](..\img\hormigon\TABLA-COORD-ATRIB-01.png)

2. La fila (ROW) ha sido configurada para que busque y selecciones todos las partes cuyo nombre sea "FUNDACION":

![EDITOR2](..\img\hormigon\TABLA-COORD-EDIT-02.png)

3. Si ingresamos al partado "Avanzado", podremos configurar el tipo de selección, editando el tipo de parte o atributo. Hay que mencionar que en el desplegable "Predefinido" podremos encontrar otro tipo de selección.

![EDITOR3](..\img\hormigon\TABLA-COORD-EDIT-03.png)

4. A modo de Ejemplo abrimos el Campo de valor "COORD_E" y observamos el atributo asociado:

![CAMPO2](..\img\hormigon\TABLA-COORD-ATRIB-02.png)

5. En este punto es importante señalar que debemos configurar bien el tipo de dato, en este caso, número con decimales y las unidades deben coincidir con el tipo de dato que queremos visualizar. En este lugar también están todos las variables del estilo de Texto.

6. Si fuera una columna para poner un orden a la lista, en la sección "Orden" podríamos seleccionar "Ascendente" o "Descendente".

![EDITOR3](..\img\hormigon\TABLA-COORD-EDIT-04.png)

7. El Pié de Página tiene la única "fórmula" que genera el conteo total de fundaciones, sumando todos los Campos de Valor "NUM_2", en definitiva suma todos los atributos "NUMBER" de cada fila. La "fórmula" es: Sum("NUM_2")

8. Como el Tekla 2020 no puede generar el conteo por fila se adosa en el dibujo un Excel para numerar las filas, en este caso denominado ""numeración.xlsx". Ver apartado 4.3.

9. Les dejo una captura con un cuadro con las características principales de la Tabla:

![excel](..\img\hormigon\TABLA-COORD-01.png)

## 2.2. En el Dibujo

1. A nivel dibujo es importante que la Vista debe contener los objetos/partes a computar en el el Cuadro, en este caso son 9:

![dib02](..\img\hormigon\TABLA-COORD-DIB-01.png)

2. Al extender la Vista de la Planta, podemos ver todas las fundaciones, y el cuadro, en forma automática se actualizará a las 51, que son el total en el modelo:

![dib02](..\img\hormigon\TABLA-COORD-DIB-02.png)

3. Como decía en apartado "En el Editor de Cuadros" (3.8) el conteo de fila deberá ser actualizado en forma manual:

![dib03](..\img\hormigon\TABLA-COORD-DIB-03.png)

Quedando con la numeración correcta:

![dib05](..\img\hormigon\TABLA-COORD-DIB-05.png)

### 2.3 Observacíon:
A nivel de "Edición de Cuadro" se puede generar un "filtro" para que, si hay más de un tipo de "fundaciones", el cuadro sólo tome la que estamos buscando. Ese filtro deberá realizarse en el "ROW".
También se puede crear otras filas para que busque esas fundaciones y genere un listado mixto, con varios tipos de fundación.
Sino se le pone filtro alguno tomará todas las "PARTE" de Hormigón y generará la Tabla. 


[__Descarga coordenadas__]


## 3. Listado de materiales

>Se busca armar un listado de cantidades para incorporar dentro del plano. Se debe buscar lo siguiente:
> - Hormigón estructural
> - Hormigón de limpieza
> - Acero ADN-420
> - Grout
> - Placas F-24
> - Anclajes por diámetro
> - También:
Ganchos Izaje AL-220
Insertos AL-220


1. En este caso pensaremos en tomar partes únicamente.
2. Cada fila deberá estar atada por material y le haremos el formato.
3. Como en este caso nos interesa obtener materiales totales, buscaremos combinar las filas de salida.

Previzualización:

![TABLA01](..\img\hormigon\TABLA-MAT.png)


## 3.1. En el Editor de Cuadros 

Utilzaremos los siguientes atributos:








## 4. Verificar coordenadas de modelado

>Las estructuras, sin importar si son de hormigón o acero siempre se ubican sobre un grillado o siguen ángulos rectos. Se busca armar un cuadro que valide que todas las partes no tengan errores casi imperceptibles en el modelado.

1. Iteraremos sobre elementos tipo vigas o columnas en este caso.
2. Para qué algo sea ortogonal, deberemos comparar coordenadas de inicio y de fin en 3D y que sigan la dirección de algún eje (es decir, que tengan igual coordenadas en X, Y o Z en inicio y fin).
3. Como en este caso usaremos atributos que no necesariamente los queremos visualizar en el reporte, los ocultaremos en la salida.
4. 


[← Volver al inicio](index.md)

