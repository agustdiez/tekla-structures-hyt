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

>Se busca extraer una tabla de coordenadas y niveles de todas las fundaciones de un modelo, ordenándolas, en este caso, primero por Área de Ubicación y luego por Nombre de Fundación. Este Ejemplo se encuentra con el nombre de "SAC_COORDS_INY QUIM.tpl". Ver en Descargas ("SAC_COORDS_INY QUIM.tpl"):

!["SAC_COORDS_INY QUIMICOS.tpl"](..\img\hormigon\TABLA-COORD.png)

1. Como nos interesa tomar fundaciones, debemos utilizar todas las PARTES con NAME: "FUNDACIONES" a nivel de ROW. Ver [Editor de cuadros](editor_cuadros.md) y tipos de fila.
2. ¿Qué atributos necesitamos? En este caso necesitamos Coordenadas Planimétricas, Niveles, Cantidades y otros atributos, que deberán ser definidos por el usuario, se utilizarán los siguientes: 

- END_X_BASEPOINT
- END_Y_BASEPOINT
- BOUNDING_BOX_MAX_Z_BASEPOPINT
- BOUNDING_BOX_MIN_Z_BASEPOPINT
- NUMBER
- USERDEFINED.USER_FIELD_1
- USERDEFINED.USER_FIELD_2
- USERDEFINED.USER_FIELD_3

Los "USERDEFINED.USER_FIELD_1/2/3" son configurados en el entorno modelo, y corresponden a ubicación y numeración de Área, podrán ser cargados en "Atributos definidos por el usuario"/"Campos usuario":

![ATRIB](..\img\hormigon\TABLA-COORD-USUARIO-01.png)

3. Entonces, debemos iterar por todas las PARTES con nombre "FUNDACIONES" y generando como salida las coordenadas en X e Y, niveles y campos de ususario de cada una.

4. A su vez, debemos ordenar por tag a las distintas PARTES. Hacemos uso de los datos dentro de la fila por ese atributo (Ver apartado Observación:)

### En el Editor de Cuadros 

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

8. Como el Tekla 2020 no puede generar el conteo por fila se adosa en el dibujo un Excel para numerar las filas, en este caso denominado ""numeración.xlsx". Ver apartado 4.3. y en zona de "Descargas".

9. Les dejo una captura con un cuadro con las características principales de la Tabla. Ver en Descargas ("Cuadro Coordenada.xlsx"):

![excel](..\img\hormigon\TABLA-COORD-01.png)


### En el Dibujo

1. A nivel dibujo es importante que la Vista debe contener los objetos/partes a computar en el el Cuadro, en este caso son 9:

![dib02](..\img\hormigon\TABLA-COORD-DIB-01.png)

2. Al extender la Vista de la Planta, podemos ver todas las fundaciones, y el cuadro, en forma automática se actualizará a las 51, que son el total en el modelo:

![dib02](..\img\hormigon\TABLA-COORD-DIB-02.png)

3. Como decía en apartado "En el Editor de Cuadros" (3.8) el conteo de fila deberá ser actualizado en forma manual, excel (numeración.xlsx) Ver Zona de Descarga:

![dib03](..\img\hormigon\TABLA-COORD-DIB-03.png)

Quedando con la numeración correcta:

![dib05](..\img\hormigon\TABLA-COORD-DIB-05.png)

### Observacíon:
A nivel de "Edición de Cuadro" se puede generar un "filtro" para que, si hay más de un tipo de "fundaciones", el cuadro sólo tome la que estamos buscando. Ese filtro deberá realizarse en el "ROW".
También se puede crear otras filas para que busque esas fundaciones y genere un listado mixto, con varios tipos de fundación.
Sino se le pone filtro alguno tomará todas las "PARTE" de Hormigón y generará la Tabla. 

### Descargas

[__Descarga Excel "numeración.xlsx"__](../../ref/Cuadros/numeración.xlsx)

[__Descarga Excel "CuadroCompMat.xlsx"__](../../ref/Cuadros/CuadroCompMat.xlsx)

[__Descarga Cuadro "SAC_COORDS_INY QUIM"__](../../ref/Cuadros/SAC_COORDS_INY%20QUIM.tpl)



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

1. En este caso tomaremos partes únicamente.
2. Cada fila deberá estar atada por material y le haremos el formato.
3. Como en este caso nos interesa obtener materiales totales, buscaremos combinar las filas de salida.

Previzualización cuadro "P-COMPUTO_HA-AC-.tpl":

![TABLA01](..\img\hormigon\TABLA-MAT.png)


### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- CAST_UNIT.NUMBER
- VOLUME
- MATERIAL
- LENGHT
- SIZE
- NUMBER
- HEIGHT
- LENGTH
- WEIGHT_NET

2. La topología del cuadro se verá de la siguiente forma:

![TABLA01](..\img\hormigon\TABLA-MAT-EDIT.png)

Los atributos se encuetran en varios "Campo de valor" con diferente nombre, cada fila contempla el cómputo de cada material, descriptos del lado derecho: H30, H15, ADN-420, SIKAGROUT 212, F24 y ASTM 1554 Gr.36. Las filas denominadas de reserva son aquellas que pueden generar el cómputo de otros materiales, como los insertos, relleno, etc.

3. Sólo como ejemplo desarrollamos la fila ADN-420.
![TABLA01](..\img\hormigon\TABLA-MAT-EDIT-01.png)
Siendo su resultado esta línea/fila:
![TABLA01](..\img\hormigon\TABLA-MAT-EDIT-03.png)

3.1. La fila se configura filtrando el material ADN-420:
![TABLA01](..\img\hormigon\TABLA-MAT-EDIT-02.png)
3.1. El material ADN-420, se computa en base a las filas "OCULTA 3" (es una copia de parte del informe "HYT-PDH.pdf", eso uniforme la salida de los datos). La fila ADN-420 suma en el campo de valor: "ARMTOT-1", la fórmula es: _Sum("PESOT_6")+Sum("PESOT_8")+Sum("PESOT_10")+Sum("PESOT_12")+Sum("PESOT_16")+Sum("PESOT_20")+Sum("PESOT_25")_
3.2. En la misma fila se computa la Cantidad Unitaria,"ARMTOT", con el mismo procedimiento, pero sumando los pesos parciales: _Sum("PESO_6")+Sum("PESO_8")+Sum("PESO_10")+Sum("PESO_12")+Sum("PESO_16")+Sum("PESO_20")+Sum("PESO_25")_
3.3. El otro campo de valor es "MATERIAL_4", se utiliza el atributo: "MATERIAL".

### En el Dibujo

1. A nivel dibujo es importante que la Vista/S debe contener los objetos/partes a computar en el el Cuadro.

[__Descarga Listado__]

## 4. Verificar coordenadas de modelado

>Las estructuras de acero siempre se ubican sobre un grillado o siguen ángulos rectos. Se busca armar un cuadro que valide que todas las partes no tengan errores casi imperceptibles en el modelado.

1. Iteraremos sobre elementos tipo vigas o columnas en este caso.
2. Para qué algo sea ortogonal, deberemos comparar coordenadas de inicio y de fin en 3D y que sigan la dirección de algún eje (es decir, que tengan igual coordenadas en X, Y o Z en inicio y fin).
2.1. En el aspecto conceptual, cuando exista un delta positivo, es decir exista una diferencia (DELTA) entre Inicial y Final, en X, Y o Z se genera un dato traducido a "1" o "0". Se generan tres datos, uno en cada dirección. 
2.2. Cuando sólo hay una dirección con un dato positivo se entenderá que estará alineado con alguno de los ejes X-Y-Z. Por Ejemplo: Si tengo la matriz (1,0,0) está alineado en X, paralelo al eje X. Si los sumo da 1.
2.3. Si la matriz es (1,1,0), (1,1,1) ó (0,1,1) me indicará que tiene un desvío en algunos de los ejes o en todos, las sumas de estas matricies me darán 2 ó 3.
2.4. Al final cuando da 1 esas filas no las necesito, puedo descartarlas, pero puede suceder que sean más largas que lo previsto, eso no lo contempla este cuadro. Cuando da 2 o 3  esa fila entrará en el resultado del cuadro.


Previzualización cuadro "COORDS_PARTES MODELO.tpl" (Ver Descargas):

![COORDMOD01](..\img\hormigon\TABLA-COORD-MOD.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- PROFILE
- NAME
- NUMBER
- START_X
- START_Y
- START_Z
- END_X
- END_Y
- END_Z

2. La topología del cuadro se verá de la siguiente forma:
![COORDMOD01](..\img\hormigon\TABLA-COORD-MOD-01.png)

Hay una sola fila para generar el cuadro, dónde se utilizan todos los atributos del punto 1.

3. Desarrollaremos algunos puntos principales:
3.1.El filtro de la fila será la siguiente:
![COORDMOD03](..\img\hormigon\TABLA-COORD-MOD-02.png)

- 3.1.1 GetValue("MATERIAL_TYPE") == "STEEL": El argumento "==" es un "son igual", buscará todas las partes que sean "acero". Si se quisiera usar en hormigón se debería eliminar esta fila.
- 3.1.2. GetValue("NAME") != "PLACA": El argumento "!=" es un "no igual" descarta las Placas, no aparecen.
- 3.1.3. CopyField("CAMPO") != 1: Las filas donde el valor del Campo de Valor "CAMPO" sea 1 la fila no aparece.
La unión entre cada argumento es "&&" que es un "y lógico", "ambas condiciones deben ser verdaderas".


4. Los campos de valor INICIOX, INICIOY e INICIOZ, toman los atributos "START_X", "START_Y", "START_Z" respectivamente. Son las coordenadas de inicio de la pieza.

5. Los campos de valor FINX, FINY e FINZ, toman los atributos "END_X", "END_Y", "END_Z" respectivamente. Son las coordenadas finales de la pieza.

6. Los campos en el apartado o columna "DELTA ABSOLUTO" generan los datos de los desvíos. Con la fórmulas:
 - a: fabs(GetValue("START_X")-GetValue("END_X")
 - b: if (fabs(GetValue("START_X")-GetValue("END_X")) > 0) then 1 else 0 endif

 - En la a) genero el desvío en milimetros, sin signos ("fabs"), se realiza por cada dirección.
- En el b) convierte ese dato en "1" y "0". La operación lógica "if" verifica que el resultado sea mayor a "0", si es verdadero pone "1", si es falso "0". De aquí sale la matriz (x,y,z) en "1" y "0"

7. La columna CONTEO suma (CopyField("X")+CopyField("Y")+CopyField("Z")) los valores X,Y,Z en "1" y "0", dando los resultados 1,2 y 3. Esto se materializa en el Campo de Valor denominado "CAMPO", es el que se utiliza en las condiciones de Fila (Apartado 3.3.1) para que las filas con valor 1 no salgan en el cuadro.

8. La última fila "GUID" presenta el Globally Unique Identifier (Identificador Único Global), con el cual se puede identificar la pieza "fuera de línea". 

9. La última fila, CANTIDAD TOTAL, suma todos los perfiles que están "fuera de línea" con la operación:Sum("NUM_2").
Suma todas la cantidades de la columna "CANT" (Campo de Valor= "NUM_2", Atributo= "NUMBER") de los perfiles que deben ser corregidos o sean visibles en la tabla.

10. Dejo una previsualización del cuadro con el resumen de Atributos y los Campos de Valor ("CuadroCompMat.xlsx", ver Descargas):
![COORDMOD09](..\img\hormigon\TABLA-COORD-MOD-09.png)


### En la Vista - Modo Trabajo o Modelado - Selección Manual.

1. Cuando estoy en el "Modo Trabajo" o "Modelado" puedo obtener un informe en PDF. Podré extraer los "GUID" y ubicar rápidamente las piezas "fuera de línea".
![COORDMOD02](..\img\hormigon\TABLA-COORD-MOD-03.png)

2. Para obtener el informe "COORDS_PARTES MODELO.pdf", seguiremos los siguientes pasos:
![COORDMOD03](..\img\hormigon\TABLA-COORD-MOD-04.png)

- 1. Seleccionamos el conjunto de Estructuras Metálicas a consultar.
- 2. Picamos el Botón "Informes"
- 3. En la ventana Informes buscamos ""COORDS_PARTES MODELO.pdf".
- 4. Por último el botón "partes selecionadas"

3. El informe se guardará en la carpeta "Informes" del directorio del modelo, se guardará como "COORDS_PARTES MODELO.pdf":
![COORDMOD04](..\img\hormigon\TABLA-COORD-MOD-05.png)

4. Abrimos el informe y veremos los siguiente. Aquí podremos copiar los GUID, mediante las herramientas comunes de Windows:
![COORDMOD05](..\img\hormigon\TABLA-COORD-MOD-06.png)

5. El procedimiento para búsqueda de la pieza, en forma manual es el siguiente:
![COORDMOD06](..\img\hormigon\TABLA-COORD-MOD-07.png)
5.1. Pegamos en el buscador el GUID (1)
5.2. Clik en la Lupa (2).
5.3. Se resalta la pieza/parte, la cual podrá ser correjida.

### En la Vista - Modo Trabajo o Modelado - Por propiedades de vista.

En proceso...

### En el Dibujo

1. A nivel dibujo es importante que la Vista/S debe contener los objetos/partes a Auditar en el Cuadro.

2. Es aconsejable ubicar este cuadro fuera del Área de Dibujo/Rótulo, funcionará como un Auditor de la Estructura Metálica. Se sugiere borrar este cuadro en el DWG que se genere, para evitar confusión con el Comitente.

2. A medida que se van resolviendo las incongruencias de alineación de las piezas el cuadro irá disminuyendo su cantidad de filas hasta quedar sólo el encabezado y la cantidad total en "0", eso se hace en tiempo real.

![COORDMOD08](..\img\hormigon\TABLA-COORD-MOD-08.png)

### Descargas


[__Descarga Listado en Excel "CuadroCompMat.xlsx"__](../../ref/Cuadros/CuadroCompMat.xlsx)

[__Descarga Cuadro "COORDS_PARTES MODELO.tpl"__](../../ref/Cuadros/COORDS_PARTES%20MODELO.tpl)

## 5. PDH para mallas de Acero tipo Sima.

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
- CAST_UNIT_NAME
- MODEL_TOTAL
- REBAR_POS
- SIZE
- GRADE
- NAME
- PULLOUT
- DIM_R_ALL
- GROUP_POS
- CATALOG_NAME
- CUSTOM.MESH_LENGTH_NET
- CUSTOM.MESH_WIDTH_NET
- CUSTOM.MESH_SIZE_NET
- AREA
- NUMBER
- SIZE
- LENGTH

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
4. La fila de las mallas, material AM500, tiene también el mismo condicionante del párrafo 3. 
![malla08](..\img\hormigon\TABLA-MALLA-08.png)
Ver Excel "Cuadro Mallas.xlsx".

5. El resumen de ADN420, calcula por tipo de diámetro la cantidad total de acero, una fila por cada tipo de diámetro, de ahí la cantidad de filas:
![malla09](..\img\hormigon\TABLA-MALLA-09.png)
Ver Excel "Cuadro Mallas.xlsx".

6. El resumen de AM500, calcula por tipo de Malla la cantidad total de acero, una fila por cada tipo de Malla:
![malla10](..\img\hormigon\TABLA-MALLA-10.png)
Ver Excel "Cuadro Mallas.xlsx".

### En la Vista - Modo Trabajo o Modelado

1. Las Mallas pueden generarse, en la etapa de "Básica" como una malla única que ocupe todo la superficie de la pieza.
![malla11](..\img\hormigon\TABLA-MAlla-11.png)
Se deberá generar con el "Tipo de malla" como "Polígono", de tal forma que pueda abarcar toda la pieza.

2. En la etapa de "Detalle" pueden generarse con las dimensiones comerciales de 2400x6000mm.
![malla12](..\img\hormigon\TABLA-MAlla-12.png)
Se deberá generar con el "Tipo de malla" como "Rectángulo", de tal forma que tendrá las dimensiones comerciales. Este se podrá copiar a lo largo y ancho de la pieza. Recortándola en los brodes.

3. Si existen agujeros, el programa calculará la supericie descontando los mismos.

### En el Dibujo

1. A nivel dibujo es importante que en la/s Vista/s  se vean las armaduras.

2. Si se utiliza este cuadro como un auditor de armaduras y mallas podría estar fuera del Área de impresión. Borrar en el DWG cuando se genere.

### Descargas


[__Descarga Listado en Excel "Cuadro Mallas.xlsx"__](../../ref/Cuadros/Cuadro%20Mallas.xlsx)

[__Descarga Cuadro "P_HYT-PDH_PL_ADN420-MALLA.tpl" para insertar en un plano.__](../../ref/Cuadros/P_HYT-PDH_PL_ADN420-MALLA.tpl)

[__Descarga Cuadro "P_HYT-PDH_ADN420-MALLA.tpl" para el "Colab".__](../../ref/Cuadros/P_HYT-PDH_ADN420-MALLA.pdf.rpt)

## 6. Cuadro resumen de Poligono Cerrado de Coordenadas

>El uso de poligonales es uno de los procedimientos topográficos más relevantes en un obra. Se usa para establecer puntos de control y puntos de apoyo para el levantamiento de detalles y elaboración de planos, para el replanteo de proyectos y para el control de ejecución de obras.
Este cuadro genera un informe de dicho polígono.

1. Trabaja con una parte denominada "COORDENADA", pequeño cilindro de "hormigón" Ø10mm y unos milimetros de altura (BARRA D10, H30, Clase 7). Es importante generar el material en "hormigón", la tabla está diseñada para ese tipo de material.
2. El cuadro presenta las coordenadas de cada punto de la poligonal y la distancia entre ellos.
3. Está diseñada para hasta 10 puntos, pero es posible adpatarla para más puntos.

4. Previzualización cuadro "COORDS_POLIGONO.tpl" (Ver Descargas):

![COORDPOL01](..\img\hormigon\TABLA-COORD-POL.png)

### En el Editor de Cuadros 

1. Utilzaremos los siguientes atributos:
- USERDEFINED.USER_FIELD_1
- USERDEFINED.USER_FIELD_2
- COG_X_BASEPOINT
- COG_Y_BASEPOINT
- BOUNDING_BOX_MAX_Z_BASEPOINT
- NUMBER

2. La topología del cuadro se verá de la siguiente forma:

![COORDPOL01](..\img\hormigon\TABLA-COORD-POL-01.png)

3. La zona "1" es la parte visible, la "2" está oculta y se utiliza para generar las longitudes entre puntos fijos (Ver Punto 7). 

4. En el Campo de Valor "NUM" tenemos el atributo "USERDEFINED.USER_FIELD_1" el que deberemos cargar por cada "COORDENADA" que ubiquemos. Es el Número de Orden que deberemos poner en un Orden de sentido horario: 
 ![COORDPOL02](..\img\hormigon\TABLA-COORD-POL-02.png)
 El dato interesante es que ésta columna definirá el orden de las filas, por eso está seleccionado en "Orden:" como "Ascendente".


5. En el Campo de Valor "NUM1" está el atributo "USERDEFINED.USER_FIELD_2", este es el Nombre del Punto:
![COORDPOL02](..\img\hormigon\TABLA-COORD-POL-08.png)

6. En los campos de Valor "COORDS_X", "COORDS_Y" y "NIVEL", se utilizarán los atributos "COG_X_BASEPOINT", "COG_Y_BASEPOINT" y "BOUNDING_BOX_MAX_Z_BASEPOINT". Los dos primeros con prefijo "COG" Toman el centro de gravedad de la parte "COORDENADA" y el "BOUNDING_BOX..." tomará la partes superior del mismo, por eso es importante poner en nivel adecuado la parte "COORDENADA".
![COORDPOL03](..\img\hormigon\TABLA-COORD-POL-03.png)
Prácticamente la parte "COORDENADA" actúa como el Hierro en Obra que materializa el punto.

7. La zona Oculta:
7.1. Es la zona dónde se realizan:
        a. Operaciones de búsqueda de los puntos subsiguientes.
        b. Los cálculos de las distancias entre puntos.
        ![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-09.png)
Sólo a título informativo, desarrollaremos en forma conceptual los anteriores puntos (a,b).
7.2. Operaciones de búsqueda de los puntos subsiguientes:
![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-10.png)
El Campo "NUMACT_1" (2) define el siguiente punto, mientras sea inferior al numero total "TOT" (3) sumará una unidad a "NUMACT" (1). Si "NUMACT"es igual al total de puntos fijos "TOT" colocará "1" en dicho campo. Así se generan los pares 1-2 hasta 8-1. Con el segundo dígito se buscarán las coordenadas "X" e "Y" del siguiente punto (4).
7.3. Cálculo de distancia entre puntos.
![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-11.png)
Se realizan las siguientes operaciones: Resta entre punto final e inicial (1), el cuadrado de la resta (2), la suma de los cuadrados (3) y la raíz cuadrada de la suma (4). Se efectuó segmentado para ir homologando los resultados con una planilla auxiliar.

8. Dejo una previsualización del cuadro con el resumen de Atributos y los Campos de Valor ("Cuadro Poligono.xlsx", ver Descargas):
![COORDPOL04](..\img\hormigon\TABLA-COORD-POL-06.png)

### En el Dibujo

1. A nivel dibujo es importante que la Vista/s debe contener todas las partes "COORDENADA".
![COORDPOL05](..\img\hormigon\TABLA-COORD-POL-05.png)
En este ejemplo están dibujadas algunas fundaciones de un ejemplo anterior.

### Descargas

[__Descarga Listado en Excel "Cuadro Poligono.xlsx"__](../../ref/Cuadros/Cuadro%20Poligono.xlsx)

[__Descarga Cuadro "COORDS_POLÍGONO.tpl"__](../../ref/Cuadros/COORDS_POLÍGONO.tpl)

## 7. Listado y Cómputo de Materiales en Estructuras de Acero

>Se busca armar un listado de partes metálicas, cantidades y pesos para incorporar dentro del plano. Se debe buscar lo siguiente:
> - Perfiles
> - 


1. Trabaja con

### En el Editor de Cuadros 

### En la Vista - Modo Trabajo o Modelado

### En el Dibujo

### Descargas

[← Volver al inicio](index.md)

