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

## Introducción

Los siguientes ejemplos buscan ejemplificar el armado de ciertos cuadros, siguiendo la lógica para crearlos.

En ese proceso siempre estaremos haciendo lo siguiente:

1. Identificar una **necesidad** (que bien puede ser para validar lo modelado, sacar cantidades, sacar información, etc.). Hacerse la pregunta correcta es la parte más importante del proceso, para entender que puede hacerse con el programa.
2. Identificar **los atributos necesarios** para hacerlo. Para ello, referir a la guía de atributos dada en [Documentación oficial](../index.md#documentación-oficial)
3. **Armar el .tpl** con los elementos correctos en función de las partes involucradas. Ver [Editor de cuadros](editor_cuadros.md) para diferenciar los tipos de fila dentro del cuadro.
4. Comenzar a probar el cuadro dentro del programa hasta obtener lo buscado.

Los cuadros enunciados a modo de ejemplo se encuentran para descargar al fin de la explicación.

   
---
##  Cuadro de coordenadas

>Se busca extraer una tabla de coordenadas y niveles de todas las fundaciones de un modelo, ordenándolas, en este caso, primero por Área de Ubicación y luego por Nombre de Fundación. El ejemplo es: [coordenadas de inyectores químicos](../ref/cuadros/SAC_COORDS_INY%20QUIM.tpl)

!["SAC_COORDS_INY QUIMICOS.tpl"](..\img\hormigon\TABLA-COORD.png)

1. Como nos interesa tomar fundaciones, debemos utilizar todas las PARTES con NAME: "FUNDACIONES" a nivel de ROW. Ver [Editor de cuadros](editor_cuadros.md) y tipos de fila.
2. ¿Qué atributos necesitamos? En este caso necesitamos Coordenadas Planimétricas, Niveles, Cantidades y otros atributos, que deberán ser definidos por el usuario, se utilizarán los siguientes: 

- `END_X_BASEPOINT`
- `END_Y_BASEPOINT`
- `BOUNDING_BOX_MAX_Z_BASEPOPINT`
- `BOUNDING_BOX_MIN_Z_BASEPOPINT`
- `NUMBER`
- `USERDEFINED.USER_FIELD_1`
- `USERDEFINED.USER_FIELD_2`
- `USERDEFINED.USER_FIELD_3`

Los `USERDEFINED.USER_FIELD_1/2/3` son configurados en el entorno modelo, y corresponden a ubicación y numeración de Área, podrán ser cargados en `Atributos definidos por el usuario/Campos usuario`:

![ATRIB](..\img\hormigon\TABLA-COORD-USUARIO-01.png)

3. Entonces, debemos iterar por todas las PARTES con nombre "FUNDACIONES" y generando como salida las coordenadas en X e Y, niveles y campos de ususario de cada una.

4. A su vez, debemos ordenar por tag a las distintas PARTES. Hacemos uso de los datos dentro de la fila por ese atributo (Ver apartado Observación:)

### En el Editor de Cuadros 

Al abrir el cuadro nos encontraremos con esta configuración:

![EDITOR](..\img\hormigon\TABLA-COORD-EDIT-01.png)

En el `ROW` están configurados todos los atributos correspondientes a cada fundación, vistos en el punto anterior, cada uno enmascarado con un Campo de Valor diferenciado:

![CAMPO1](..\img\hormigon\TABLA-COORD-ATRIB-01.png)

La fila (`ROW`) ha sido configurada para que busque y selecciones todos las partes cuyo nombre sea "FUNDACION":

![EDITOR2](..\img\hormigon\TABLA-COORD-EDIT-02.png)

Si ingresamos al apartado `Avanzado` podremos configurar el tipo de selección, editando el tipo de parte o atributo. Hay que mencionar que en el desplegable `Predefinido` podremos encontrar otro tipo de selección.

![EDITOR3](..\img\hormigon\TABLA-COORD-EDIT-03.png)

A modo de Ejemplo abrimos el Campo de valor `COORD_E` y observamos el atributo asociado:

![CAMPO2](..\img\hormigon\TABLA-COORD-ATRIB-02.png)

1. En este punto es importante señalar que debemos configurar bien el tipo de dato, en este caso, número con decimales y las unidades deben coincidir con el tipo de dato que queremos visualizar. En este lugar también están todos las variables del estilo de Texto.

2. Si fuera una columna para poner un orden a la lista, en la sección `Orden` podríamos seleccionar `Ascendente` o `Descendente`.

![EDITOR3](..\img\hormigon\TABLA-COORD-EDIT-04.png)

El Pié de Página tiene la única "fórmula" que genera el conteo total de fundaciones, sumando todos los Campos de Valor `NUM_2`, en definitiva suma todos los atributos `NUMBER` de cada fila. La "fórmula" es: `Sum("NUM_2")`

Como el Tekla 2020 no puede generar el conteo por fila se adosa en el dibujo un Excel para numerar las filas, en este caso denominado `numeración.xlsx`. Ver apartado 4 y en zona de "Descargas".

Una captura con un cuadro con las características principales de la Tabla. Ver [cuadro coordenadas](../ref/Cuadros/Cuadro%20Coordenada.xlsx)

![excel](..\img\hormigon\TABLA-COORD-01.png)

### En el Dibujo

1. A nivel dibujo es importante entender que la vista debe contener los objetos/partes a computar en el el Cuadro, en este caso son 9:

![dib02](..\img\hormigon\TABLA-COORD-DIB-01.png)

2. Al extender la Vista de la Planta, podemos ver todas las fundaciones, y el cuadro, en forma automática se actualizará a las 51, que son el total en el modelo:

![dib02](..\img\hormigon\TABLA-COORD-DIB-02.png)

3. Como decía en apartado "En el Editor de Cuadros" el conteo de fila deberá ser actualizado en forma manual, excel (numeración.xlsx) Ver Zona de Descarga:

![dib03](..\img\hormigon\TABLA-COORD-DIB-03.png)

Quedando con la numeración correcta:

![dib05](..\img\hormigon\TABLA-COORD-DIB-05.png)



> A nivel de "Edición de Cuadro" se puede generar un "filtro" para que, si hay más de un tipo de "fundaciones", el cuadro sólo tome la que estamos buscando. Ese filtro deberá realizarse en el `ROW`.
> 
>También se pueden crear otras filas para que busque esas fundaciones y genere un listado mixto, con varios tipos de fundación.
> Si no se le pone filtro alguno, tomará todas las "PARTE" de Hormigón y generará la Tabla. 

### Descargas

[__Descarga Excel "numeración.xlsx"__](../ref/Cuadros/numeración.xlsx){: .btn .btn-purple }

[__Descarga Excel "CuadroCompMat.xlsx"__](../ref/Cuadros/CuadroCompMat.xlsx){: .btn .btn-purple }

[__Descarga Cuadro "SAC_COORDS_INY QUIM"__](../ref/Cuadros/SAC_COORDS_INY%20QUIM.tpl){: .btn .btn-purple }


## Listado de materiales

>Se busca armar un listado de cantidades para incorporar dentro del plano. Se debe buscar lo siguiente:
> - Hormigón estructural
> - Hormigón de limpieza
> - Acero ADN-420
> - Grout
> - Placas F-24
> - Anclajes por diámetro
> Ganchos Izaje AL-220
> Insertos AL-220

1. En este caso tomaremos partes únicamente.
2. Cada fila deberá estar atada por material y le haremos el formato.
3. Como en este caso nos interesa obtener materiales totales, buscaremos combinar las filas de salida.

El objetivo final es lograr un cuadro como `P-COMPUTO_HA-AC-.tpl`:

![TABLA01](..\img\hormigon\TABLA-MAT_0.png)


### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- `NAME`
- `PERFIL`
- `CAST_UNIT.NUMBER`
- `VOLUME`
- `MATERIAL`
- `LENGHT`
- `SIZE`
- `NUMBER`
- `HEIGHT`
- `LENGTH`
- `WEIGHT_NET`
- `USER_FIELD_2`

2. La topología del cuadro se verá de la siguiente forma:

![TABLA01](..\img\hormigon\TABLA-MAT-EDIT.png)

Los atributos se encuetran en varios `Campo de valor` con diferente nombre, cada fila contempla el cómputo ya sea por `NAME`, `PERFIL` o `MATERIAL`, descriptos del lado derecho: `FUNDACION`, `H30`, `H15`, `ADN-420`, `GROUT`, `PL*`, `ANCLAJE`, `EXCAVACIÓN` y `RELLENO`. Las filas denominadas de reserva son aquellas que pueden generar el cómputo de otros materiales, como los insertos, objetos de referencia, etc.

3. Brevemente desarrollaremos cada fila:

.La fila _CANT. TOTAL_ busca la cantidad total de `FUNDACIONES`:
![TABLA01a](..\img\hormigon\TABLA-MAT-EDIT-01a.png)

.La denominada _OCULTA 1_ desarrolla todos los volúmenes de las estructuras de hormigón con calidad `H30`, está oculta, sólo es para control, si se necesitara verlas, tildar `Ocultar en salida`:
![TABLA01b](..\img\hormigon\TABLA-MAT-EDIT-01b.png)
El Campo principal es `VOLUME_hor` dónde se suma el volumen por tipo de `FUNDACIÓN` con el atributo `VOLUME`:
![TABLA01e](..\img\hormigon\TABLA-MAT-EDIT-01e.png)

. La fila _H30_ es el totalizador, filtra los `H30`:
![TABLA01b](..\img\hormigon\TABLA-MAT-EDIT-01c.png)
El principal campo es el `CampoValor_03` totaliza el campo `VOLUMEN_hor` de las filas _OCULTA 1_.
![TABLA01d](..\img\hormigon\TABLA-MAT-EDIT-01d.png)

.La fila _OCULTA 2_ desarrolla todos los volúmenes de las estructuras de hormigón calidad `H15`, está oculta, sólo es para control, si se ncesitara verlas, tildar `Ocultar en salida`.
![TABLA01f](..\img\hormigon\TABLA-MAT-EDIT-01f.png)
El campo que totaliza el volumen es `VOLUMEN_hor_1` por cada tipo de fundación:
![TABLA01g](..\img\hormigon\TABLA-MAT-EDIT-01g.png)

. La fila _H15_ es el totalizador, filtra los `H15`:
![TABLA01h](..\img\hormigon\TABLA-MAT-EDIT-01h.png)
El principal campo: `CampoValor_6` totaliza `VOLUMEN_hor_1`:
![TABLA01i](..\img\hormigon\TABLA-MAT-EDIT-01i.png)

.Desarrollamos la fila _ADN-420_.
![TABLA01](..\img\hormigon\TABLA-MAT-EDIT-01.png)
Siendo su resultado esta línea/fila (totalizador):
![TABLA03](..\img\hormigon\TABLA-MAT-EDIT-03.png)

La fila se configura filtrando el material ADN-420:
![TABLA02](..\img\hormigon\TABLA-MAT-EDIT-02.png)

El material `ADN-420`, se computa en base a las filas "OCULTA 3" (es una copia de parte del informe "HYT-PDH.pdf", eso uniforma la salida de los datos). La fila ADN-420 suma en el campo de valor: `ARMTOT-1`, la fórmula es: `Sum("PESOT_6")+Sum("PESOT_8")+Sum("PESOT_10")+Sum("PESOT_12")+Sum("PESOT_16")+Sum("PESOT_20")+Sum("PESOT_25")`.
El otro campo de valor es `MATERIAL_4`, se utiliza el atributo: `MATERIAL`.

.Fila _GROUT_ filtra el grout mediante `NAME`=`GROUT`.

.Fila _PL*_ filtra la chapa mediante `PROFILE`=`PL*`.

.Fila _ANCLAJE_ filtra el anclaje mediante `NAME`=`ANCLAJE`.

.Las filas _EXCAVACIÓN_ y _RELLENO_ generan los volúmenes descriptos, con una fila de selección, otra oculta para resultados por tipo de volumen y una fila de resultados.

### En la Vista - Modo Trabajo o Modelado

1. Cuando se modele el Grout:
.Se deberá poner como `NAME`= GROUT, el `MATERIAL`= `GROUT CEMENTICIO` o `GROUT EPOXI`:
![TABLA04](..\img\hormigon\TABLA-MAT-EDIT-04.png)
.También en el atributo `USER_FIELD_2` (Campo de Usuario 2) se colocará la Calidad del Material, en el ejemplo se consignó "SIKGROUT 212". El `USER_FIELD_1` (Campo de Usuario 1), en amarillo, se completará cuando se usa la variante de este cuadro:
![TABLA05](..\img\hormigon\TABLA-MAT-EDIT-05.png)

2. Para modelar el Anclaje, se deberá poner el `NAME`  como _ANCLAJE_ y usar el perfil `ANCLAJE_M*`, el esterisco (*) serán los milímetros:
![TABLA11](..\img\hormigon\TABLA-MAT-EDIT-11.png)
Para colocar el Material, se usará el `USER_FIELD_2` y se escribirá el tipo de materila, en este caso _ASTM 1554 Gr.36_:
![TABLA12](..\img\hormigon\TABLA-MAT-EDIT-12.png)
El `USER_FIELD_1` (Campo de Usuario 1), se completará cuando se usa la variante de este cuadro.

3. Para modelar la excavación y el relleno:
.Primero se deberá modelar la excavación, el `NAME` (Nombre) deberá ser _EXCAVACIÓN_ (Sí, con acento), en este caso se creo un material en la Base de Materiales que se llama _EXCAVACIÓN_. Para que funcione la tabla/cuadro no es necesario esa definición, pero hay que tener cuidado de no definirle el H30 ó H15, o algún otro material que se use en el modelo, eso dará un error en la Tabla:
![TABLA06](..\img\hormigon\TABLA-MAT-EDIT-06.png)
El modelado se ejecutó con un perfil particular, con taludes 1:1, de acuerdo a requerimientos de este Proyecto en particular. El perfil es el`PRMD3400*3400-5600*5600`, las cifras `3400` son la base en milímetros y las `5600` son los lados superiores. La altura se maneja con el Nivel Superior e Inferior, en este caso -250.00mm y -1850.00mm, altura de 1600mm.
El perfil se encuentra en la Zona de `Paramétricos`, con el nombre de `PRMD`:
![TABLA07](..\img\hormigon\TABLA-MAT-EDIT-07.png)
![TABLA08](..\img\hormigon\TABLA-MAT-EDIT-08.png)

.Segundo se modele el relleno, no será otro que el prisma de la _Excavación_ y se le resta el H30 Y el H15 de la fundación. El `NAME` (Nombre) deberá ser _RELLENO_, en este caso se creo un material en la Base de Materiales que se llama _RELLENO_. Para que funcione la tabla/cuadro no es necesario esa definición, pero hay que tener cuidado de no definirle el H30 ó H15, o algún otro material que se use en el modelo, eso dará un error en la Tabla:
![TABLA09](..\img\hormigon\TABLA-MAT-EDIT-09.PNG)

._El consejo_: el modelado de la excavación y el relleno sería apropiado realizarlo fuera del área de las fundaciones, así es más fácil seleccionar las partes para, por ejemplo, hacer la `Corte por partes` para el relleno. Cuando se tenga que mover todo al área de la fundación generará un mensaje si desea Conservar o Borrar Duplicados, esto aparece porque son dos perfiles iguales tratando de cohabitar en un mismo espacio, debemos ponerle _Conservar duplicados_, entonces quedarán ambos sólidos en la zona de la fundación:
![TABLA10](..\img\hormigon\TABLA-MAT-EDIT-10.PNG)


### En el Dibujo

A nivel dibujo es importante que la Vista/s debe contener los objetos/partes a computar en el el Cuadro.
![TABLA14](..\img\hormigon\TABLA-MAT-EDIT-14.png)
En este caso están conviviendo dos tablas, la del recuadro en rojo es la  totalizadora de las 30 unidades que corresponde a este apartado, la superior es con `USER_FIELD_1`=1 es la del siguiente capítulo.


### Descargas

[__Descarga cuadro "P-COMPUTO_HA-AC-.tpl""__](../ref/Cuadros/P_COMPUTO_HA-AC-.tpl){: .btn .btn-purple }

## Listado de materiales - Uso `USER_FIELD_1`

>Se busca armar un listado de materiales de algunas fundaciones (seleccionadas de acuerdo a características particulares como dimensiones o armaduras) para incorporar dentro del plano. Se filtra mediante el atributo`USER_FIELD_1`. Se debe buscar lo siguiente:
> - Hormigón estructural
> - Hormigón de limpieza
> - Acero ADN-420
> - Grout
> - Placas F-24
> - Anclajes por diámetro
> Ganchos Izaje AL-220
> Insertos AL-220

El objetivo final es lograr un cuadro como `P_COMPUTO_HA-AC_Atrib1.tpl`:

![TABLA02](..\img\hormigon\TABLA-MAT_2.png)

Para detalles particulares de esta Tabla ver capítulo anterior _Listado de materiales_. 

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- `NAME`
- `PERFIL`
- `CAST_UNIT.NUMBER`
- `VOLUME`
- `MATERIAL`
- `LENGHT`
- `SIZE`
- `NUMBER`
- `HEIGHT`
- `LENGTH`
- `WEIGHT_NET`
- `USER_FIELD_1`
- `USER_FIELD_2`

2. La topología del cuadro se verá de la siguiente forma:
![TABLA02a](..\img\hormigon\TABLA-MAT_2a.png)
En el recuadro rojo está la fila `FILTRO`, que mediante el atributo `USERDEFINED.USER_FIELD_1` = 1, filtra todas las fundaciones, placas, anclajes, hormigones que tengan caracterizado el campo de usuario en 1.
![TABLA02b](..\img\hormigon\TABLA-MAT_2b.png)
Para utilizar esta tabla en un mismo plano o modelo deberá cambiarse el nombre, para lograr que funciones de acuerdo a los cambios del atributo `USER_FIELD_1`. _Observación_:Lo más seguro es cambiarle totalmente el nombre, de `P_COMPUTO_HA-AC_Atrib1.tpl`  a, por ejemplo `1346_Fund Flare_Atrib1.tpl` cambiando el 1 por otro numero de acuero al valor del `USER_FIELD_1`.

3. Para el resto de las filas y campos y atributos utilizados ver capítulo anterior.

### En la Vista - Modo Trabajo o Modelado

.Se filtrará cuidadosamente cada parte de las fundaciones, grout, anclajes, chapas, armaduras, etc. de cada tipo de fundación y se colocará en el atributo `USER_FIELD_1` el valor que deseemos, en este caso particular 1, 2, 3, etc. 


### En el Dibujo

Procurar dejar en las vistas toda las fundaciones, no hay problema que una misma fundación aparezca en otras vistas en un mismo plano:
![TABLA12](..\img\hormigon\TABLA-MAT-EDIT-13.png)
En este caso están conviviendo dos tablas, la del recuadro en rojo es la que corresponde a este apartado con `USER_FIELD_1`=1, la inferior es la totalizadora de las 30 unidades (desarrollada en el apartado anterior).

### Descargas

[__Descarga cuadro "P_COMPUTO_HA-AC_Atrib1.tpl""__](../ref/Cuadros/P_COMPUTO_HA-AC_Atrib1.tpl){: .btn .btn-purple }



## Verificar coordenadas de modelado

>Las estructuras de acero siempre se ubican sobre un grillado o siguen ángulos rectos. Se busca armar un cuadro que valide que todas las partes no tengan errores casi imperceptibles en el modelado.

1. Iteraremos sobre elementos tipo vigas o columnas en este caso.
   
2. Para qué algo sea ortogonal, deberemos comparar coordenadas de inicio y de fin en 3D y que sigan la dirección de algún eje (es decir, que tengan igual coordenadas en X, Y o Z en inicio y fin).

{: .note}
>En el aspecto conceptual, cuando exista un delta positivo, es decir exista una diferencia (DELTA) entre Inicial y Final, en X, Y o Z se genera un dato traducido a "1" o "0". Se generan tres datos, uno en cada dirección. 
>
>Cuando sólo hay una dirección con un dato positivo se entenderá que estará alineado con alguno de los ejes X-Y-Z. Por Ejemplo: Si tengo la matriz (1,0,0) está alineado en X, paralelo al eje X. Si los sumo da 1.
>
> Si la matriz es (1,1,0), (1,1,1) ó (0,1,1) me indicará que tiene un desvío en algunos de los ejes o en todos, las sumas de estas matricies me darán 2 ó 3.
> 
> Al final cuando da 1 esas filas no las necesito, puedo descartarlas, pero puede suceder que sean más largas que lo previsto, eso no lo contempla este cuadro. Cuando da 2 o 3  esa fila entrará en el resultado del cuadro.



Previzualización cuadro `COORDS_PARTES MODELO.tpl` (Ver Descargas):

![COORDMOD01](..\img\hormigon\TABLA-COORD-MOD.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- `PROFILE`
- `NAME`
- `NUMBER`
- `START_X`
- `START_Y`
- `START_Z`
- `END_X`
- `END_Y`
- `END_Z`

2. La topología del cuadro se verá de la siguiente forma:
![COORDMOD01](..\img\hormigon\TABLA-COORD-MOD-01.png)

Hay una sola fila para generar el cuadro, dónde se utilizan todos los atributos del punto 1.

3. Desarrollaremos algunos puntos principales:
a. El filtro de la fila será la siguiente:
![COORDMOD03](..\img\hormigon\TABLA-COORD-MOD-02.png)

-  `GetValue("MATERIAL_TYPE") == "STEEL"`: El argumento `==` es un "son igual", buscará todas las partes que sean "acero". Si se quisiera usar en hormigón se debería eliminar esta fila.
-  `GetValue("NAME") != "PLACA"`: El argumento `!=` es un "no igual" descarta las Placas, no aparecen.
-  `CopyField("CAMPO") != 1`: Las filas donde el valor del Campo de Valor `CAMPO` sea 1 la fila no aparece.
La unión entre cada argumento es `&&` que es un "y lógico", "ambas condiciones deben ser verdaderas".


4. Los campos de valor `INICIOX`, `INICIOY` e `INICIOZ`, toman los atributos `START_X`, `START_Y`, `START_Z` respectivamente. Son las coordenadas de inicio de la pieza.

5. Los campos de valor `FINX`, `FINY` e `FINZ`, toman los atributos `END_X`, `END_Y`, `END_Z` respectivamente. Son las coordenadas finales de la pieza.

6. Los campos en el apartado o columna "DELTA ABSOLUTO" generan los datos de los desvíos. Con la fórmulas:
 - a: `fabs(GetValue("START_X")-GetValue("END_X")`
 - b: `if (fabs(GetValue("START_X")-GetValue("END_X")) > 0) then 1 else 0 endif`

 - En la a) genero el desvío en milimetros, sin signos (`fabs`), se realiza por cada dirección.
- En el b) convierte ese dato en "1" y "0". La operación lógica "if" verifica que el resultado sea mayor a "0", si es verdadero pone "1", si es falso "0". De aquí sale la matriz (x,y,z) en "1" y "0"

7. La columna CONTEO suma `(CopyField("X")+CopyField("Y")+CopyField("Z"))` los valores X,Y,Z en "1" y "0", dando los resultados 1,2 y 3. Esto se materializa en el Campo de Valor denominado `CAMPO`, es el que se utiliza en las condiciones de Fila (Apartado 3) para que las filas con valor 1 no salgan en el cuadro.

8. La última fila `GUID` presenta el Globally Unique Identifier (Identificador Único Global), con el cual se puede identificar la pieza "fuera de línea". 

9. La última fila, CANTIDAD TOTAL, suma todos los perfiles que están "fuera de línea" con la operación:`Sum("NUM_2")`.
Suma todas la cantidades de la columna `CANT` (Campo de Valor= `NUM_2`, Atributo= `NUMBER`) de los perfiles que deben ser corregidos o sean visibles en la tabla.

10. Dejo una previsualización del cuadro con el resumen de Atributos y los Campos de Valor (CuadroCompMat.xlsx, ver Descargas):
![COORDMOD09](..\img\hormigon\TABLA-COORD-MOD-09.png)


### En la Vista - Modo Trabajo o Modelado - Selección Manual.

1. Cuando estoy en el "Modo Trabajo" o "Modelado" puedo obtener un informe en PDF. Podré extraer los `GUID` y ubicar rápidamente las piezas "fuera de línea".
![COORDMOD02](..\img\hormigon\TABLA-COORD-MOD-03.png)

2. Para obtener el informe `COORDS_PARTES MODELO.pdf`, seguiremos los siguientes pasos:
![COORDMOD03](..\img\hormigon\TABLA-COORD-MOD-04.png)

- 1. Seleccionamos el conjunto de Estructuras Metálicas a consultar.
- 2. Picamos el Botón "Informes"
- 3. En la ventana Informes buscamos `COORDS_PARTES MODELO.pdf`.
- 4. Por último el botón "partes selecionadas"

3. El informe se guardará en la carpeta "Informes" del directorio del modelo, se guardará como `COORDS_PARTES MODELO.pdf`:
![COORDMOD04](..\img\hormigon\TABLA-COORD-MOD-05.png)

4. Abrimos el informe y veremos los siguiente. Aquí podremos copiar los GUID, mediante las herramientas comunes de Windows:
![COORDMOD05](..\img\hormigon\TABLA-COORD-MOD-06.png)

5. El procedimiento para búsqueda de la pieza, en forma manual es el siguiente:
![COORDMOD06](..\img\hormigon\TABLA-COORD-MOD-07.png)
a. Pegamos en el buscador el `GUID` (1)
b. Clik en la Lupa (2).
c. Se resalta la pieza/parte, la cual podrá ser correjida.

### En la Vista - Modo Trabajo o Modelado - Por propiedades de vista.

En proceso...

### En el Dibujo

1. A nivel dibujo es importante que la Vista/S debe contener los objetos/partes a Auditar en el Cuadro.

2. Es aconsejable ubicar este cuadro fuera del Área de Dibujo/Rótulo, funcionará como un Auditor de la Estructura Metálica. Se sugiere borrar este cuadro en el DWG que se genere, para evitar confusión con el Comitente.

2. A medida que se van resolviendo las incongruencias de alineación de las piezas el cuadro irá disminuyendo su cantidad de filas hasta quedar sólo el encabezado y la cantidad total en "0", eso se hace en tiempo real.

![COORDMOD08](..\img\hormigon\TABLA-COORD-MOD-08.png)

### Descargas


[__Descarga Listado en Excel "CuadroCompMat.xlsx"__](../ref/Cuadros/CuadroCompMat.xlsx){: .btn .btn-purple }

[__Descarga Cuadro "COORDS_PARTES MODELO.tpl"__](../ref/Cuadros/COORDS_PARTES%20MODELO.tpl){: .btn .btn-purple }

## PDH para mallas de Acero tipo Sima.

>Este cuadro es una variación del informe "HYT-PDH.tpl", dónde se logra materializar la información de las mallas en el detalle de formas de las armadura y en el resumen de armadura.

1. Iteraremos sobre elementos tipo columnas, vigas, fundaciones, fustes, losas o muros de hormigón.
2. El gráfico de armaduras y mallas será diferenciada, para describir los dos tipo de geometrías.
3. Esta tabla está utilizada sobre un recinto (losa) con mallas, AM500, de dos tipos (Q335 Sup. y Q524 Inf.) y armaduras ADN420 para generar los caballetes, armadura de cordón y uniones entre malla superior e inferior.
4. En la zona gráfica de armaduras se describirá los diámetros de doblado para la armadura ADN420.
5. Se genera un informe para la armadura ADN420 Y AM500.

Previsualización cuadro/pdf "P_HYT-PDH_PL_ADN420-MALLA.tpl" (Ver Descargas):
![malla01](..\img\hormigon\TABLA-MALLA-01.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- `CAST_UNIT_NAME`
- `MODEL_TOTAL`
- `REBAR_POS`
- `SIZE`
- `GRADE`
- `NAME`
- `PULLOUT`
- `DIM_R_ALL`
- `GROUP_POS`
- `CATALOG_NAME`
- `CUSTOM.MESH_LENGTH_NET`
- `CUSTOM.MESH_WIDTH_NET`
- `CUSTOM.MESH_SIZE_NET`
- `AREA`
- `NUMBER`
- `SIZE`
- `LENGTH`

2. La topología del cuadro se verá de la siguiente forma:
![malla02](..\img\hormigon\TABLA-MALLA-02.png)
2.1. La zona 1 genera todas las filas de las piezas de armadura ADN420.
![malla03](..\img\hormigon\TABLA-MALLA-03.png)
2.2. La 2 las mallas AM500.
![malla04](..\img\hormigon\TABLA-MALLA-04.png)
2.3. La 3 el Resumen de Cómputo de la armadura ADN420.
![malla05](..\img\hormigon\TABLA-MALLA-05.png)
2.4. La 4 el Resumen de Cómputo de las mallas AM500.
![malla06](..\img\hormigon\TABLA-MALLA-06.png)

3. La fila que busca los ADN420 tiene un condicionante, la condición instruye al programa a filtrar o seleccionar únicamente aquellos elementos que no tienen asignada la forma "A" (o cuyo nombre de forma es diferente a "A").
![malla07](..\img\hormigon\TABLA-MALLA-07.png)
Cómo es una fila que extraera datos de la Armadura ADN420 solamente, cada campo valor está asociado a un atributo en particular.
Esta fila trabaja con Loongitudes de las Armaduras y sus cantidades, de acuerdo a su forma, de ahí su 
 Ver Excel "Cuadro Mallas.xlsx".
4. La fila de las mallas, material AM500, no necesita condicionante: 
![malla08](..\img\hormigon\TABLA-MALLA-08.png)
Ver Excel "Cuadro Mallas.xlsx".

5. El resumen de ADN420, calcula por tipo de diámetro la cantidad total de acero, una fila por cada tipo de diámetro, de ahí la cantidad de filas:
![malla09](..\img\hormigon\TABLA-MALLA-09.png)
Ver Excel `Cuadro Mallas.xlsx`.

6. El resumen de AM500, calcula por tipo de Malla la cantidad total de acero, una fila por cada tipo de Malla:
![malla10](..\img\hormigon\TABLA-MALLA-10.png)
Ver Excel `Cuadro Mallas.xlsx`.

### En la Vista - Modo Trabajo o Modelado

1. Las Mallas pueden generarse, en la etapa de "Básica" como una malla única que ocupe todo la superficie de la pieza.
![malla11](..\img\hormigon\TABLA-MAlla-11.png)
Se deberá generar con el `Tipo de malla` como `Polígono`, de tal forma que pueda abarcar toda la pieza.

2. En la etapa de "Detalle" pueden generarse con las dimensiones comerciales de 2400x6000mm.
![malla12](..\img\hormigon\TABLA-MAlla-12.png)
Se deberá generar con el `Tipo de malla` como `Rectángulo`, de tal forma que tendrá las dimensiones comerciales. Este se podrá copiar a lo largo y ancho de la pieza, respetando los empalmes reglamentarios. Para recortarlos se deberá setear `Malla Personalizada` y editar el ancho o el largo. Sugiero utilizar lineas auxiliares (`Objetos de Construcción`) para verificar las longitudes.
Una vez generadas las mallas, con las dimesiones comerciales, se deberán actualizar las posiciones:
PRIMERO: Se setearán los cuatro pasos indicados en la imagen en "Cambiar número":
 ![malla17](..\img\hormigon\TABLA-MALLA-17.png)
SEGUNDO: Se eligirá `RE-NUMERAR-2` en Configuración de Numeración:
 ![malla18](..\img\hormigon\TABLA-MALLA-18.png)
 TERCERO: `Realizar Numeración`
Así quedaría el listado de Mallas:
![malla16](..\img\hormigon\TABLA-MAllA-16.png)

3. Si existen agujeros, el programa calculará la supericie descontando los mismos.

### En el Dibujo

1. A nivel dibujo es importante que en la/s Vista/s  se vean las armaduras.

2. Si se utiliza este cuadro como un auditor de armaduras y mallas podría estar fuera del Área de impresión. Borrar en el DWG cuando se genere.

### Descargas


[__Descarga Listado en Excel "Cuadro Mallas.xlsx"__](../ref/Cuadros/Cuadro%20Mallas.xlsx){: .btn .btn-purple }

[__Descarga Cuadro "P_HYT-PDH_PL_ADN420-MALLA.tpl" para insertar en un plano.__](../ref/Cuadros/P_HYT-PDH_PL_ADN420-MALLA.tpl){: .btn .btn-purple }

[__Descarga Cuadro "P_HYT-PDH_ADN420-MALLA.tpl" para el "Colab".__](../ref/Cuadros/P_HYT-PDH_ADN420-MALLA.pdf.rpt){: .btn .btn-purple }

## Cuadro resumen de Poligono Cerrado de Coordenadas

>El uso de poligonales es uno de los procedimientos topográficos más relevantes en un obra. Se usa para establecer puntos de control y puntos de apoyo para el levantamiento de detalles y elaboración de planos, para el replanteo de proyectos y para el control de ejecución de obras.
Este cuadro genera un informe de dicho polígono.

1. Trabaja con una parte denominada "COORDENADA", pequeño cilindro de "hormigón" Ø10mm y unos milimetros de altura (`BARRA`, `D10`, `H30`, `Clase 7`). Es importante generar el material en "hormigón", la tabla está diseñada para ese tipo de material.
2. El cuadro presenta las coordenadas de cada punto de la poligonal y la distancia entre ellos.
3. Está diseñada para hasta 10 puntos, pero es posible adpatarla para más puntos.

4. Previzualización cuadro "COORDS_POLIGONO.tpl" (Ver Descargas):

![COORDPOL01](..\img\hormigon\TABLA-COORD-POL.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- `USERDEFINED.USER_FIELD_1`
- `USERDEFINED.USER_FIELD_2`
- `COG_X_BASEPOINT`
- `COG_Y_BASEPOINT`
- `BOUNDING_BOX_MAX_Z_BASEPOINT`
- `NUMBER`

2. La topología del cuadro se verá de la siguiente forma:

![COORDPOL01](..\img\hormigon\TABLA-COORD-POL-01.png)

3. La zona "1" es la parte visible, la "2" está oculta y se utiliza para generar las longitudes entre puntos fijos (Ver Punto 7). 

4. En el Campo de Valor `NUM` tenemos el atributo `USERDEFINED.USER_FIELD_1` el que deberemos cargar por cada "COORDENADA" que ubiquemos. Es el Número de Orden que deberemos poner en un Orden de sentido horario: 
 ![COORDPOL02](..\img\hormigon\TABLA-COORD-POL-02.png)
 El dato interesante es que ésta columna definirá el orden de las filas, por eso está seleccionado en "Orden:" como "Ascendente".


5. En el Campo de Valor `"NUM1"` está el atributo `"USERDEFINED.USER_FIELD_2"`, este es el Nombre del Punto:
![COORDPOL02](..\img\hormigon\TABLA-COORD-POL-08.png)

6. En los campos de Valor `COORDS_X`, `COORDS_Y` y `NIVEL`, se utilizarán los atributos `COG_X_BASEPOINT`, `COG_Y_BASEPOINT` y `BOUNDING_BOX_MAX_Z_BASEPOINT`. Los dos primeros con prefijo `COG` toman el centro de gravedad de la parte `"COORDENADA"` y el `"OUNDING_BOX...` tomará la partes superior del mismo, por eso es importante poner en nivel adecuado la parte `"COORDENADA"`.
![COORDPOL03](..\img\hormigon\TABLA-COORD-POL-03.png)
Prácticamente la parte "COORDENADA" actúa como el Hierro en Obra que materializa el punto.

7. La zona Oculta:
Es la zona dónde se realizan:
        a. Operaciones de búsqueda de los puntos subsiguientes.
        b. Los cálculos de las distancias entre puntos.
        ![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-09.png)
Sólo a título informativo, desarrollaremos en forma conceptual los anteriores puntos (a,b).
a. Operaciones de búsqueda de los puntos subsiguientes:
![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-10.png)
El Campo `NUMACT_1` (2) define el siguiente punto, mientras sea inferior al numero total `TOT` (3) sumará una unidad a `NUMACT` (1). Si `"NUMACT"` es igual al total de puntos fijos `TOT` colocará "1" en dicho campo. Así se generan los pares 1-2 hasta 8-1. Con el segundo dígito se buscarán las coordenadas "X" e "Y" del siguiente punto (4).
b. Cálculo de distancia entre puntos.
![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-11.png)
Se realizan las siguientes operaciones: Resta entre punto final e inicial (1), el cuadrado de la resta (2), la suma de los cuadrados (3) y la raíz cuadrada de la suma (4). Se efectuó segmentado para ir homologando los resultados con una planilla auxiliar.

8. Dejo una previsualización del cuadro con el resumen de Atributos y los Campos de Valor (`Cuadro Poligono.xlsx`, ver Descargas):
![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-06.png)

### En el Dibujo

1. A nivel dibujo es importante que la Vista/s debe contener todas las partes "COORDENADA".
![COORDPOL05](..\img\hormigon\TABLA-COORD-POL-05.png)
En este ejemplo están dibujadas algunas fundaciones de un ejemplo anterior.

### Descargas

[__Descarga Listado en Excel "Cuadro Poligono.xlsx"__](../ref/Cuadros/Cuadro%20Poligono.xlsx){: .btn .btn-purple }

[__Descarga Cuadro "COORDS_POLÍGONO.tpl"__](../ref/Cuadros/COORDS_POLÍGONO.tpl){: .btn .btn-purple }

## Listado y Cómputo de Materiales en Estructuras de Acero

>Se busca generar un listado de partes metálicas, de una parte en un estructura, utilizando el cantidades y pesos para incorporar dentro del plano. Se debe buscar lo siguiente:
> - Placas
> - Perfiles
> - Bulones

1.Iteramos sobre toda la Estructura Metálica para otener el peso total y la cantidad de bulones.
2.Separamos en tres items: Placas, Perfiles y Bulones.

Previsualización de la Tabla `P_COMPUTO_ACERO.tpl` (Ver Zona de Descargas):

![ESMET01](..\img\hormigon\TABLA-ESMET-01.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- `WIDTH`
- `MATERIAL`
- `WEIGHT`
- `PROFILE`
- `WEIGHT_M`
- `DIAMETER`
- `GRADE`
- `NUMBER`
- `MATERIAL_TYPE`
- `PROFILE`
- `NAME`

2. La topología del cuadro se verá de la siguiente forma:
![ESMET02](..\img\hormigon\TABLA-ESMET-02.png)
a. La Zona 1 contiene el encabezado del cuadro, es sólo texto y líneas.
b. La Zona 2 trabaja con las Placas, y funciona con dos filas: 
![ESMET03](..\img\hormigon\TABLA-ESMET-03.png)
.En el primer nivel se filtra el `MATERIAL_TYPE` con `STEEL` (Acero). Esta fila está oculta, no se ve en el cuadro.
![ESMET04](..\img\hormigon\TABLA-esmet-04.png)
.En el Segundo nivel se eligen sólo las Partes que tengan como `PROFILE` las `PL*`. las Placas, al poner el asterisco toma todas sin importar los espesores.
Esta fila es la visible.
Esta fila cuenta con un "verificador" de espesores, cuando no coinciden con las establecidas en la normativa se hace visible, mediante el campo `VERIF`, tres signos de admiración en rojo "!!!" (en el recuadro amarillo):
 ![ESMET04a](..\img\hormigon\TABLA-ESMET-04a.png)
Permite saber que las placas o chapas tienen un error de espesor. Lamentablemente Tekla redondea el espesor en el caso de las pulgadas. En el Ejemplo la de 5/8" es de 8mm y la de 3/8" es de 10mm (en el recuadro rojo los espesores reales de modelado). 
Cuando se corrige, desaparecen los "!!!":
 ![ESMET04c](..\img\hormigon\TABLA-ESMET-04c.png)
El campo de valor `VERIF` contiene la tabla con los 15 espesores Normalizados.
Si coincide vuelca un cero y el resultado del campo queda vacío, sino coincide lanza el "!!!".
 ![ESMET04b](..\img\hormigon\TABLA-ESMET-04b.png)
.El Campo de Valor `SUPERF` genera el peso/m2 de la chapa con la siguiente fórmula: `(GetValue("WIDTH")/1000)*7850`
![ESMET04d](..\img\hormigon\TABLA-ESMET-04d.png)
.El campo de valor `PESOPL` suma todos los pesos de las chapas mediante el atributo `WEIGHT`:
![ESMET04e](..\img\hormigon\TABLA-ESMET-04e.png)
.El campo de valor `SUPERF_1` genera la superficie total de las chapas por tipo de espesor con la fórmula:`CopyField("PESOPL")/CopyField("SUPERF")`.
![ESMET04f](..\img\hormigon\TABLA-ESMET-04f.png)
Una observación, cuando obtengo valores de los atributos, coloco `GetValue`, si quiero utilizar valores de Campos de Valor, coloco `CopyField`.

c. La Zona 3 genera las filas de los Perfiles, y trabaja, también, con dos filas:
![ESMET05](..\img\hormigon\TABLA-ESMET-05.png)
En el primer nivel se filtra el `PROFILE` con `PL*` (Placa).
![ESMET06](..\img\hormigon\TABLA-ESMET-06.png)
En el Segundo nivel se descartan sólo las Partes que tengan como `NAME` el nombre `PLACA`. 
d. La Zona 4 genera las filas de los Bulones, y trabaja con dos filas:
![ESMET07](..\img\hormigon\TABLA-ESMET-07.png)
En el primer nivel se filtra el `CONTENTTYPE` con `BOLT` (Tornillo).
![ESMET08](..\img\hormigon\TABLA-ESMET-08.png)
En el Segundo nivel no hay selección, sólo se setea la fila como `TORNILLO`
e. La zona 5 es la de resultados y Suma con `Sum` los campos de valor: `Sum("PESOPL_3")+Sum("PESOPL")` para el peso y `Sum("NUMT")` para los bulones.
f. Por practicidad el ancho de las filas es mejor dejarlas más anchas que las zonas de trabajo, así es más sencillo seleccionar la fila para su configuración y modificar los campos de valor.
3. Para descargar el excel `CuadroCompEstrMetálica.xlsx` que resume las variables y fórmulas ir a la Zona de Descargas.  

### En la Vista - Modo Trabajo o Modelado

1. En este ámbito son importantes los espesores de las chapas, que deberán ser modelados con los espesores Estándar:
![ESMET09](..\img\hormigon\TABLA-ESMET-09.png)
Como se describía en el punto anterior (2.b) la tabla generará un aviso si los espesores no son los Estandarizados, con un triple "!" en color rojo.
2. Los perfiles deberán modelarse de acuerdo a la base de datos del SIRSOC, en la `Base de Datos Perfiles` ya agregada al Tekla. Esto es importante para que el cómputo se realize de acuerdo a los pesos unitarios estandarizados de la Norma de Referencia. 
![ESMET09a](..\img\hormigon\TABLA-ESMET-09a.png)
Los pesos unitarios se encuentran en el atributo `WEIGHT_M`.

### En el Dibujo

1. A nivel dibujo es importante que en la/s Vista/s  se vean todas las Estructuras Metálicas:
![ESMET10](..\img\hormigon\TABLA-ESMET-10.png)
En este caso tiene los Cortes de algunos pórticos, eso no es un problema, la Tabla no vuelve a contabilizar los Perfiles/Placas/Bulones repetidos en la Planta y los Cortes. Puede identificar los repetidos.
2. Como en otro caso, la numeración de las filas es gobernado con un Excel, denominado  `numeración3.xlsx` (Ver en Zona de descargas").
3.Verifiquen si no surge los signos de admiración en la fila de las Chapas. Ver punto 2.b de "En el Editor de Cuadros".

### Descargas

[Descarga Listado en Excel "numeración3.xlsx"](../ref/Cuadros/numeración3.xlsx){: .btn .btn-purple }
[Descarga Listado en Excel "CuadroCompEstrMetálica.xlsx"](../ref/Cuadros/CuadroCompEstrMetálica.xlsx){: .btn .btn-purple } 
[Descarga Cuadro "P_COMPUTO_ACERO.tpl"](../ref/Cuadros/P_COMPUTO_ACERO.tpl){: .btn .btn-purple }

## Listado y Cómputo de Materiales en Estructuras de Acero - Uso `USER_FIELD_1`

>Se busca generar un listado de partes metálicas, pero seleccionanado una estrucutra de otras mediante un filtro determiado por el atributo `USER_FIELD_1`. Así se obtendrán las 
cantidades y pesos para incorporar dentro del plano. Se debe buscar lo siguiente:
> - Placas
> - Perfiles
> - Bulones

1.Iteramos sobre toda la Estructura Metálica para otener el peso total y la cantidad de bulones de esa estrucutra.
2.Separamos en tres items: Placas, Perfiles y Bulones.

Previsualización de la Tabla `P_COMPUTO_ACERO_SelecAtrib.tpl` (Ver Zona de Descargas):
![ESMETA01](..\img\hormigon\TABLA-ESMET-Atr_01.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos, prácticamente son los mismos del apartado anterior, agregando uno:
- `WIDTH`
- `MATERIAL`
- `WEIGHT`
- `PROFILE`
- `WEIGHT_M`
- `DIAMETER`
- `GRADE`
- `NUMBER`
- `MATERIAL_TYPE`
- `PROFILE`
- `NAME`
- `USER_FIELD_1`

2. La topología del cuadro se verá de la siguiente forma:
![ESMETA02](..\img\hormigon\TABLA-ESMET-Atr_02.png)

a. Paras las áreas 1, 2, 3, 4 y 5 ver la descripción en el punto anterior: 2a-b-c-d-e-f.

b. El área 1A es el qque establece la diferencia con el cuadro anterior, filtra todas las partes mediante el atributo `USER_FIELD_1`:

![ESMETA02](..\img\hormigon\TABLA-ESMET-Atr_03.png)
.La zona A: es igual a los descripto en el partado anterior. Pero está "anidado" debajo de "B" la fila que contiene el filtro:
`if GetValue("USERDEFINED.USER_FIELD_1") == 1 then`
 `Output()`
`else`
 `StepOver()` 
`endif`
Esto logra que se compute todas las partes cuyo atributo `USER_FIELD_1` sea, en este caso, un 1 (uno).
3. Para descargar el excel `CuadroCompEstrMetálica.xlsx` que resume las variables y fórmulas ir a la Zona de Descargas.
4. Para lograr utilizar el mismo cuadro en una lámina es importante ir cambiando el nombre del cuadro, por ejemplo el primero será `P_COMPUTO_ACERO_SelecAtrib1.tpl` para selecionar las estrucutras con `USER_FIELD_1`=1, el siguiente podría ser `P_COMPUTO_ACERO_SelecAtrib2.tpl`para `USER_FIELD_1`=2, y así sucesivamente.
En el ejemplo siguiente se ven los resultados para una selección de 1 estructura (naranja), 2 estructuras (amarillo) y 4 estructuras (verde) pórticos, todos iguales en geometría (celeste "A"):
![ESMETA08](..\img\hormigon\TABLA-ESMET-Atr_08.png)
.El naranja tiene `USER_FIELD_1`=1
.El amarillo tiene `USER_FIELD_1`=2
.El verde tiene `USER_FIELD_1`=3.
Esta es una forma práctica de tener cómputos de diferentes estrucutras separados por `USER_FIELD_1`.


### En la Vista - Modo Trabajo o Modelado

1. En éste ámbito se aplica lo mismo que el apartado anterior.
2. Para ingresar el valor a `USER_FIELD_1` se deberá hacerlo eligiendo cada tipo:
- Chapas
![ESMETA04](..\img\hormigon\TABLA-ESMET-Atr_04.png)

- Pefiles
![ESMETA05](..\img\hormigon\TABLA-ESMET-Atr_05.png)

- Bulón/Tornillo
![ESMETA06](..\img\hormigon\TABLA-ESMET-Atr_06.png)

Se pueden generar filtros para elegir cada tipo, en este ejemplo cómo elegir el perfil `W6x12`:

![ESMETA07](..\img\hormigon\TABLA-ESMET-Atr_07.png)

En la zona inferior de comando se hace click en `Filtro Selección` (1) y se abre el menú `Grupo Objetos-Filtro Selección`. En una de las filas se elije:
`PARTE/PERFIL/Igual a/W6x12` (2). Se debe tildar la fila y luego `APLICAR/OK`.
Una vez efectuado esta operación se "barre" con el cursor la zona para seleccionar esos perfiles (3), que pueden abarcar uno o más pórticos o estructuras. Una vez selecionado se coloca el 1 u otro número en la zona de `USER_FIELD_1`:
![ESMETA05](..\img\hormigon\TABLA-ESMET-Atr_05.png)

Esta operación se repite para Chapas y Bulones.

### En el Dibujo

1. Se aplican todas las sugerencias del apartado anterior.
2. En el ejemplo siguiente se ven los resultados para una selección de 1 estructura (naranja), 2 estructuras (amarillo) y 4 estructuras (verde) pórticos, todos iguales en geometría (celeste "A"):
![ESMETA08](..\img\hormigon\TABLA-ESMET-Atr_08.png)
.El naranja tiene `USER_FIELD_1`=1. (P_COMPUTO_ACERO_SelecAtrib1.tpl)
.El amarillo tiene `USER_FIELD_1`=2. (P_COMPUTO_ACERO_SelecAtrib2.tpl)
.El verde tiene `USER_FIELD_1`=3. (P_COMPUTO_ACERO_SelecAtrib3.tpl)
Esta es una forma práctica de tener cómputos de diferentes estrucutras separados por `USER_FIELD_1`.

### Descargas

[Descarga Listado en Excel "numeración3.xlsx"](../ref/Cuadros/numeración3.xlsx){: .btn .btn-purple }
[Descarga Listado en Excel "CuadroCompEstrMetálica.xlsx"](../ref/Cuadros/CuadroCompEstrMetálica.xlsx){: .btn .btn-purple } 
[Descarga Cuadro "P_COMPUTO_ACERO_SelecAtrib1.tpl"](../ref/Cuadros/P_COMPUTO_ACERO_SelecAtrib1.tpl){: .btn .btn-purple }
[Descarga Cuadro "P_COMPUTO_ACERO_SelecAtrib2.tpl"](../ref/Cuadros/P_COMPUTO_ACERO_SelecAtrib2.tpl){: .btn .btn-purple }
[Descarga Cuadro "P_COMPUTO_ACERO_SelecAtrib3.tpl"](../ref/Cuadros/P_COMPUTO_ACERO_SelecAtrib3.tpl){: .btn .btn-purple }


[← Volver al inicio](index.md)

