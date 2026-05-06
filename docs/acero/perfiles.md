---
title: Elementos de acero
layout: default_with_reading_time
parent: Acero
nav_order: 1
has_toc: true
---

# Configuración inicial
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}


## Objeto y alcance

Contiene los estándares y procedimientos para el modelado de estructuras de hormigón armado en Tekla Structures. Cubre elementos estructurales, propiedades a completar y buenas prácticas para garantizar modelos coordinados y homogéneos.

No es alcance de este instructivo mostrar cuestiones básicas del modelado de elementos si no brindar pautas de diseño y guiar en el proceso.

El objeto de este instructivo es mencionar los estándares y procedimientos para el modelado de estructuras de acero en Tekla Structures, a fin de mantener un modelado homogeneo a nivel empresa. 

Se cubriran los siguientes aspectos para cada elemento:
- Definición
- Propiedades a completar
- Buenas prácticas

No es alcance de este instructivo mostrar cuestiones básicas del modelado de elementos si no brindar pautas de diseño y guiar en el proceso. Para pautas más básicas de modelado, referir a la [bibliografía](../index.md#documentación-oficial)


---
## Conceptos generales modelado en acero:

### Profile:
En el modelado de acero, la pestaña `Profile` se refiere al perfil de la parte del acero que se modela, dentro de estos perfiles los más utilizados son:

- UPN
- IPN
- IPE
- CPN
- HEA
- HEB
- Angulos: L B x B x T* 

### Atributos a modelar:

Va a depender de IB/ID, definiciones de proyecto, pero en caracter general y como obligatorios tenemos los siguientes:

- NAME
- CLASS
- PROFILE
- MATERIAL
- UDAs (_Atributos definidos por el usuario_): es responsabilidad del LEP indicar cuáles se precisan, de acuerdo al preset de propiedades creado, descripto en [Preset Propiedades](../proyecto_nuevo/preset_propiedades.md).


#### Name (MODIFICAR CON NOMBRES ACERO)

Tabla de nombres

| Elemento                      | Nomenclatura      |
|:------------------------------|:------------------|
| Sleeper                       | SL                |
| Platea                        | PLATEA            |
| Base Aislada                  | BA                |
| Viga de Encadenado            | VE                |
| Zapata Corrida                | ZC                |
| Cabezal                       | CAB               |
| Pilote                        | PIL               |
| Hormigón de Limpieza          | HL                |
| Grout                         | GROUT             |
| Columna de H°A                | COL               |
| Viga de H°A                   | VIG               |
| Placa Base/Chapa Embebida     | PB_<# Secuencial> |
| Bulones de Anclaje 1° Etapa   | ANCLAJE_1         |
| Bulones de Anclaje 2° Etapa   | ANCLAJE_2         |

#### Clases (MODIFICAR CON NOMBRES ACERO)
Hay 14 clases/colores definidos en tekla, esta sirve para discriminar elementos en Trimble Connect con colores. 

![CLASES POSIBLES](../img/hormigon/CLASES.png)

Por simplicidad, seguir lo siguiente:



| Elemento                      | Nomenclatura      | Clase                               |
|:------------------------------|:------------------|:----------------------------------- |
| Sleeper                       | SL                |![CLASE](../img/hormigon/CLASE_8.png)|
| Platea                        | PLATEA            |![CLASE](../img/hormigon/CLASE_8.png)|
| Base Aislada                  | BA                |![CLASE](../img/hormigon/CLASE_8.png)|
| Viga de Encadenado            | VE                |![CLASE](../img/hormigon/CLASE_6.png)|
| Zapata Corrida                | ZC                |![CLASE](../img/hormigon/CLASE_8.png)|
| Cabezal                       | CAB               |![CLASE](../img/hormigon/CLASE_8.png)|
| Pilote                        | PIL               |![CLASE](../img/hormigon/CLASE_8.png)|
| Hormigón de Limpieza          | HL                |![CLASE](../img/hormigon/CLASE_13.png)|
| Grout                         | GROUT             |![CLASE](../img/hormigon/CLASE_5.png)|
| Columna de H°A                | COL               |![CLASE](../img/hormigon/CLASE_8.png)|
| Viga de H°A                   | VIG               |![CLASE](../img/hormigon/CLASE_8.png)|
| Placa Base/Chapa Embebida     | PB_<# Secuencial> |![CLASE](../img/hormigon/CLASE_9.png)|
| Bulones de Anclaje 1° Etapa   | ANCLAJE_1         |![CLASE](../img/hormigon/CLASE_2.png)|
| Bulones de Anclaje 2° Etapa   | ANCLAJE_2         |![CLASE](../img/hormigon/CLASE_2.png)|

---
## Descripción de elementos

Tekla permite modelar estructuras de acero, este capitulo se centra en la creación de objetos de acerp. Hay 5 principales opciones en el modelado. 

![Ribbon Acero](../img/acero/RIBBON_ACERO.png)
*Figura 1: Ribbon  Acero*


### Column

Son elementos verticales que transmiten cargas axiales y momentos desde niveles superiores hacia la fundación.


#### Usos

- Columnas sobre estructuras de hormigón

![RIBBON COLUMNA ACERO](../img/acero/RIBBON_COLUMNA_ACERO.gif)
![DESCRIPCION COLUMNA ACERO](../img/acero/DESCRIPCION_COLUMNA_ACERO.png)
*Figura 2: Atributos Column Acero*

**Atributos importantes:**
| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Name** | Identificador del elemento | `COLUMNA` |
| **Profile** | Perfil de la columna | `HEA 120 ` |
| **Material** | Material del elemento | `F24` |
| **Class** | Clase del elemento  | `1` |
| **Position** | Posición de la parte | - |
| **IFC export** | Atributos de exportación  | - |
| **UDAS** | Atributos definidos por el usuario |- |
| **Altura** | Altura del elemento |`3500` |


- **1- Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "COLUMNA"
- **2- Profile**: Perfil normalizado de la columna
- **3- Material**: Material del elemento, dependen de la base de datos de materiales, suele ser F24
- **4- Class**: Color del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "1", puede variar.
- **5- Position** : Posición de la parte, puede modificarse en vertical/rotación/horizontal/superior
- **5- IFC Export** : Atributos y configuraciones de la exportación a IFC.
- **6- User field / UDAS**: Atributos tanto definidos por el usuario como los "userfield" estas filas tienen varios usos, tanto como la numeración, o especificaciones, estas filas pueden usarse para tablas, reportes, cuadros.
- **7- Altura**: Altura de la parte, se edita desde el elemento.

![PROCEDIMIENTO COLUMNA](../img/acero/PROCEDIMIENTO_COLUMNA_ACERO.gif)
*Figura 2.5: Como crear una Column*

### Beam

Son elementos horizontales o inclinados que transmiten cargas por flexión.

#### Usos

- Vigas en estructura metalicas

![RIBBON BEAM ACERO](../img/acero/RIBBON_BEAM_ACERO.gif)
![TIPOS DE BEAM](../img/acero/TIPOS_DE_BEAM_ACERO.png)
*Figura 3: Tipos de steel beam*

- **Beam:** Viga tradicional, perfiles rectos interrumpidos con longitudes.
- **Polybeam:** Poliviga, contiene tramos rectos, curvos y dobleces, son perfiles ininterrumpidos por movimientos.
- **Curved Beam:** Vigas curvas, son perfiles con curvaturas.
- **Twin profile:** Son vigas que generan perfiles gemelos, tradicionalmente conocidos como espalda con espalda, generan perfiles que comparten una de sus caras y van en la misma dirección. 
- **Ortogonal beam:** Viga ortogonal, crea vigas tradicionales, ortogonales a un plano de trabajo.
- **Spiral beam:** vigas espiral, crea vigas en forma de espiral.


![DESCRIPCION BEAM ACERO](../img/acero/DESCRIPCION_BEAM_ACERO.png)
*Figura 3: Atributos Beam Acero*

**Atributos importantes:**
| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Name** | Identificador del elemento | `VIGA` |
| **Profile** | Perfil de la columna | `HEA 120 ` |
| **Material** | Material del elemento | `F24` |
| **Class** | Clase del elemento  | `1` |
| **Position** | Posición de la parte | - |
| **IFC export** | Atributos de exportación  | - |
| **UDAS** | Atributos definidos por el usuario |- |
| **Altura** | Altura del elemento |`3500` |


- **1- Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "COLUMNA"
- **2- Profile**: Perfil normalizado de la columna
- **3- Material**: Material del elemento, dependen de la base de datos de materiales, suele ser F24
- **4- Class**: Color del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "1", puede variar.
- **5- Position** : Posición de la parte, puede modificarse en vertical/rotación/horizontal/superior.
- **6- IFC export / UDAS**: Atributos y configuraciones de la exportación a IFC. Atributos tanto definidos por el usuario como los "userfield" estas filas tienen varios usos, tanto como la numeración, o especificaciones, estas filas pueden usarse para tablas, reportes, cuadros.
- **7- Largo**: Largo de la parte, se edita desde el elemento.

![PROCEDIMIENTO BEAM](../img/acero/PROCEDIMIENTO_BEAM_ACERO.gif)
*Figura 3.5: Como crear una Beam*

### Plate

Son elementos laminares planos que sirven para la creación de complementos a la estructura metálica. 

![RIBBON PLATE](../img/acero/RIBBON_PLATE_ACERO.gif)
![RIBBON PLATE OPCIONES](../IMG/acero/RIBBON_PLATE_ACERO.png)
*Figura 4: Tipos de plates*

- **Plate:** Crea una placa poligonal en base a a 3 o mas puntos, 
- **Cylindrical bent plate:** Crea una placa seleccionando dos partes de acero y estableciendo un radio de doblado
- **Conical bent plate:** Crea una placa cónica con corvatura, dependiendo de la ubicación de la placas que conecte. 
- **Stand-alone bent plate:** Crea una placa cilindrica o cónica, sin necesidad de placas de referencia. 
- **Lofted plate**: Crea una placa alabeada al seleccionar dos objetos de construcción o puntos.

![PLATE ATRIBUTOS](../img/acero/DESCRIPCIÓN_PLATE_ACERO.png)





![PROCEDIMIENTO PLATE](../img/acero/PROCEDIMIENTO_PLATE_ACERO.gif)










### Bolt

Describir para qué sirve y como se modela a nivel propiedaees. Va a componentes de forma automatica

### Weld

Describir para qué sirve y como se modela a nivel propiedaees. Va a componentes de forma automatica


---

## Antes de modelar

- Referencias de connect
- Referencias externas de cliente
- Referencias internas del proyecto de otras disciplinas

EL Lep deberá indicar a quien modele lo que debe tomar como información valida y tener en cuenta

Para referencias de Connect, ver [Connect - Ejecutor](../connect/connect-ejecutor.md)

Es altamente probable que se tenga un modelo de elementos finitos de la estructura. Ver [Importacion FEM](./importacion_FEM.md) para detalle de como importar modelos.

---

## Diseño de conexiones

Solo aplicable en ID salvo detalles puntuales en IB. Indicar las conexiones típicas presentas y derivar al capitulo de conexiones

Ver [Conexiones](./conexiones.md) para detalle de cómo modelar, tipo de armaduras, y reportes asociados.

## Componentes

Se incluyen los componentes en el apartado [Conexiones](./conexiones.md)

---
## Proyectar la estructura

### Piezas de taller

En ingeniería básica no suele ser necesario modelar uniones y no suele ser parte del alcance modelarlas a no ser que se solicite modelar ciertas uniones que ayuden a entender la estrategia de modularización. 

En ingeniería de detalle, donde ya es necesario modelar uniones y detallarlas en los planos, se debe definir con el ingeniero principalmente dos cosas:

- Piezas de taller
- Uniones abulonadas calculadas

Las piezas de taller tendrán uniones soldadas y se abulonan distintas piezas de taller a través de uniones calculadas.

Consultar con el ingeniero para entender como se debe modularizar la estructura previo a su modelado. Esto definirá qué uniones deben hacerse soldadas y cuáles abulonadas.

### Soldaduras

Las soldaduras siempre deberán hacerse a través de componentes, pero es necesario conocer qué implica cada soldadura para alcanzar la simbología correcta. No es necesario que la misma se modele correctamente (aunque pueda hacerse), si no que se indique correctamente.

{: .note}
>Las soldaduras se indican de acuerdo con [AWS (American Welding Society)](https://en.wikipedia.org/wiki/American_Welding_Society).



![Soldaduras](../img/acero/soldaduras.png)
*Figura 1: Pestaña soladduras del programa*

En (1) se indica la soldadura sobre la línea (lugar opuesto a la flecha) y en (2) la soldadura del lado de la flecha. En (3) se suman parámetros para indicar si es intermitente, si se hace en sitio (banderita) o si es en todo el perímetro (circulo).

Respecto a la simbología a indicar en (1) y (2), se indican a continuación las simbologías más comunes en una tabla azul.

![posiciones](../img/acero/posiciones.png)
*Figura 2: Nomenclatura de soldaduras*

El cateto de soldadura se indicará donde la misma esté expresamente calculada. Caso contrario, existirá una nota en el plano que defina de manera genérica su espesor.

Cualquier otro detalle deberá entenderse como una solución particular que deberá ser concensuada con ingeniería.


### Chapas de nudo

El desarrollo de chapas de nudo es en gran medida artesanal a realizar por el proyectista. Siempre se deberá priorizar el uso de componentes (ver [Conexiones](./conexiones.md)) y modelar o editar en función de eso. Sin embargo, se dejan a continuación algunos lineamientos generales

A nivel general, el diseño de la chapa en extremos debe seguir el ancho de la sección que se ilustra debajo, buscando tener desde la línea de bulones/soldadura un ángulo de aproximadamente 30°.

![Whitmore](../img/acero/whitmore.png)
*Figura 3: Area de Whitmore*

{: .highlight}
>La geometría de las chapas de nudo debe buscar tener chapas pequeñas (para obtener la mayor cantidad de chapas por kg de acero), sin aristas vivas, y respetando distancias a borde
>
> En muchas uniones deberá ajustarse el sistema de los perfiles que concurren para facilitar la unión (por ejmplo, desplazar el sistema de los ángulos al ala inferior del perfil en lugar de ir al baricentro)


### Distancias entre bulones, distancias a borde y distancias a perfiles

El siguiente apartado menciona aspectos referentes a cada tipo de distancia, y que deberá tomar el proyectista en cuenta a la hora de proyectar las uniones. Las distancias indicadas son para agujeros normales. Ovalados tendrán algún requisito adicional que no se cubre en las tablas presentadas.

#### Distancia entre bulones y a borde

Al modelar siempre se debe optar por tener la distancia mínima entre bulones. Se dejan a modo informativo estas distancias:

| Tamaño Bulón | d (mm) | Sep.Min. (3d) | Sep.Max. | Dist.Min a borde (1.5d) |
|--------------|----------|------------------------|-------------------|---------------------------|
| 1/2"         | 12.7    | 1.50" (38 mm)         | 12t ≤ 6"          | 0.75" (19 mm)            |
| 5/8"         | 15.9    | 1.88" (48 mm)         | 12t ≤ 6"          | 0.94" (24 mm)            |
| 3/4"         | 19.05    | 2.25" (57 mm)         | 12t ≤ 6"          | 1.13" (29 mm)            |
| 7/8"         | 22.22    | 2.63" (67 mm)         | 12t ≤ 6"          | 1.31" (33 mm)            |
| 1"           | 25.4    | 3.00" (76 mm)         | 12t ≤ 6"          | 1.50" (38 mm)            |

(*) $t$ se corresponde con el mínimo espesor de la chapa de unión.


#### Otras distancias a tener en cuenta

Las uniones en general se darán con encuentros con perfiles, placas base o lugares comprometidos. Se debe asegurar en cualquier unión lugar disponible para poder asegurar que se hará un ajuste firme de estos con una llave.

Dichas distancias se visualizan en el modelo 3D en el proceso, pero se deja de referencia la imagen debajo:

![distancias_perfiles](../img/acero/distancias.png)
*Figura 4: Distancias en perfiles*

![Distancia de apriete en bulones](../img/acero/DISTANCIA%20DE%20APRIETE%20BULONES.png)
*Figura 5: Distancias  de apriete en bulones*

### Placa base

Las placa base se harán con componentes personalizados. Verificar componente a utilizar de acuerdo a [Conexiones](../acero/conexiones.md)

Se deberá definir con ingeniería:

- Llave de corte
- Geometría y disposición de anclajes
- Necesidad o no de rigidizadores
- Presencia de chapas cuadradas (tipo arandela) a soldar en campo para 2° etapa.

{: .important}
>La calidad de los anclajes deberá ser según ASTM F1554 Gr.36 o Gr.55 según corresponda para practicamente cualquier placa base a desarrollar.

### Grating

El grating se modela con elementos de placa. Se deberá seleccionar el material de acuerdo con los siguientes. 



En caso de requerir una rejilla que se aparte de lo indicado, se deberá crear el material, asignarle su densidad para el espesor buscado.

A fines de validar que esté modelada correctamente, las placas creadas como Grating y asignadas al material adecuado deberán pintarse de verde con el filtro de representación.





[← Volver al inicio](index.md)