---
title: Elementos de Hormigón
layout: default_with_reading_time
parent: Hormigón
nav_order: 1
has_toc: true
---

# Elementos - Hormigón
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}


## Objeto y alcance

Contiene los estándares y procedimientos para el modelado de estructuras de hormigón armado en Tekla Structures. Cubre elementos estructurales, propiedades a completar y buenas prácticas para garantizar modelos coordinados y homogéneos.

No es alcance de este instructivo mostrar cuestiones básicas del modelado de elementos si no brindar pautas de diseño y guiar en el proceso.

<span style="color: red;">
El objeto de este instructivo es mencionar los estándares y procedimientos para el modelado de estructuras de hormigón armado en Tekla Structures, a fin de mantener un modelado homogeneo a nivel empresa. 

Se cubriran los siguientes aspectos para cada elemento:
- Definición
- Propiedades a completar
- Buenas prácticas

No es alcance de este instructivo mostrar cuestiones básicas del modelado de elementos si no brindar pautas de diseño y guiar en el proceso. Para pautas más básicas de modelado, referir a la bibliografía de la home (link a home)

</span>

---

## Descripción de elementos

<span style="color: red;">
Agregar epigrafes a figuras en italics, como Figura X: descripcion
</span>

Tekla permite modelar estructuras de hormigon armado, este capitulo se centra en la creación de objetos de H°. Hay 4 principales opciones en el modelado. 

<span style="color: red;">
En todos los casos de Name y class dejar ejemplos (después te digo que valores darle), pero referir a un nuevo ### Atributos obligatorios
</span>

![RIBBON-H°A°](../img/hormigon/RIBBON-H°.png)

### Footing

Elementos en contacto con el suelo que distribuyen las cargas provenientes de la estructura. `Suele ser la función mas utilizada para modelar cualquier fundación independientemente de la forma`

<span style="color: red;">
#### Usos

- Dados
- Bases aisladas
- Fundaciones de equipos (horizontales/verticales)
- Bases tipo cuenco
- Plateas
- Zapata corrida
  
</span>


![RIBBON FOOTING](../img/hormigon/RIBBON-FOOTING.gif)
 
![DESCRIPCIÓN FOOTING](../img/hormigon/DESCRIPCIÓN%20FOOTING.png)

**Atributos importantes**:

<span style="color: red;">
Agregar epigrafes a figuras en italics, como Figura X: descripcion
</span>

<span style="color: red;">
Qué sería lo de IFC Export? Lo estamos usando?
</span>

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Name** | Identificador del elemento | `ZAPATA` |
| **Profile** | Base y altura del elemento | `700*400` |
| **Material** | Material del elemento | `H30` |
| **Class** | Clase del elemento  | `8` |
| **Position** | Desplazamiento del elemento  | `-100` |
| **IFC export** | Config. de exportación | - |
| **User field / UDAS** | Atributos del elementos  | - |
| **Alto** | Alto del elemento |`400` |

- **1. Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "ZAPATA" o "BASE AISLADA"
- **2- Profile**: Base y altura del elemento, tienen dos maneras de editarse, en la pestaña de propiedades o en la parte superior o inferior del elemento.
- **3- Material**: Material del elemento, dependen de la base de datos de materiales, suele ser H25/H30/H35
- **4- Class**: Color del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "8", puede variar.
- **5-Position**: Desplazamiento del elemento, se puede modificar los puntos de inicio y final del elemento en cualquiera de sus ejes (X/Y/Z). 
- **6- IFC Export** : Atributos y configuraciones de la exportación a IFC.
- **7- User field / UDAS**: Atributos tanto definidos por el usuario como los "userfield" estas filas tienen varios usos, tanto como la numeración, o especificaciones, estas filas pueden usarse para tablas, reportes, cuadros.
- **8- Altura**: Altura del elemento, se edita desde el elemento

![PROCEDIMIENTO FOOTING](../img//hormigon/PROCEDIMIENTO-FOOTING.gif)


### Beam

Son elementos horizontales o inclinados que transmiten cargas por flexión.

<span style="color: red;">
#### Usos

- Vigas de encadenado
- Vigas en estructura de hormigón
- Anillos de tanques
  
</span>

![RIBBON BEAM](../img/hormigon/RIBBON-%20BEAM.gif)

![DESCRIPCIÓN VIGA](../img/hormigon/VIGA%20H°.png)

**Atributos importantes**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Name** | Identificador del elemento | `VIGA` |
| **Profile** | Base y altura del elemento | `700*400` |
| **Material** | Material del elemento | `H30` |
| **Class** | Clase del elemento  | `8` |
| **Offset** | Desplazamiento del elemento  | `-100` |
| **IFC export** | Config. de exportación | - |
| **User field / UDAS** | Atributos del elementos  | - |
| **Largo** | Largo del elemento |`6000` |

- **1- Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "VIGA"
- **2- Profile**: Base y altura del elemento, tienen dos maneras de editarse, en la pestaña de propiedades o en la parte superior o inferior del elemento.
- **3- Material**: Material del elemento, dependen de la base de datos de materiales, suele ser H25/H30/H35
- **4- Class**: Color del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "8", puede variar.
- **5-Offset**: Desplazamiento del elemento, se puede modificar los puntos de inicio y final del elemento en cualquiera de sus ejes (X/Y/Z). 
- **6- IFC Export** : Atributos y configuraciones de la exportación a IFC.
- **7- User field / UDAS**: Atributos tanto definidos por el usuario como los "userfield" estas filas tienen varios usos, tanto como la numeración, o especificaciones, estas filas pueden usarse para tablas, reportes, cuadros.
- **8- Altura**: Altura del elemento, se edita desde el elemento.

![PROCEDIMIENTO VIGA](../img/hormigon/PROCEDIMIENTO%20VIGA.gif)

### Column

Son elementos verticales que transmiten cargas axiales y momentos desde niveles superiores hacia la fundación.

<span style="color: red;">
#### Usos

- Columnas sobre estructuras de hormigón
  
</span>


![RIBBON COLUMNA](../img/hormigon/GIF-COLUMNA.gif)

![DESCRIPCIÓN COLUMNNA](../img/hormigon/COLUM-H°.png)

**Atributos importantes:**
| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Name** | Identificador del elemento | `COLUMNA` |
| **Profile** | Dimensiones del elemento | `300*300` |
| **Material** | Material del elemento | `H30` |
| **Class** | Clase del elemento  | `8` |
| **IFC export** | Config. de exportación | - |
| **User field / UDAS** | Atributos del elementos  | - |
| **Altura** | Altura del elemento |`3600` |

- **1- Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "COLUMNA"
- **2- Profile**: Dimension del elemento, tienen dos maneras de editarse, en la pestaña de propiedades o en la parte superior o inferior del elemento.
- **3- Material**: Material del elemento, dependen de la base de datos de materiales, suele ser H25/H30/H35
- **4- Class**: Color del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "8", puede variar.
- **5- IFC Export** : Atributos y configuraciones de la exportación a IFC.
- **6- User field / UDAS**: Atributos tanto definidos por el usuario como los "userfield" estas filas tienen varios usos, tanto como la numeración, o especificaciones, estas filas pueden usarse para tablas, reportes, cuadros.
- **7- Altura**: Altura del elemento, se edita desde el elemento.

![PROCEDIMIENTO COLUMNA 1](../img/hormigon/PROCEDIMIENTO%20COLUMNA.gif)

### Slab

Son elementos superficiales que trabajan en una o dos direcciones

<span style="color: red;">
#### Usos

- Losas en estructuras de hormigón.
- **No** usar para plateas de fundación
  
</span>


![RIBBON SLAB](../img/hormigon/RIBBON%20SLAB.gif)

![DESCRIPCIÓN SLAB](../img/hormigon/DESCRIPCIÓN%20SLAB.png)

**Atributos importantes:**

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Name** | Identificador del elemento | `LOSA` |
| **Thickness** | Espesor del elemento | `200` |
| **Material** | Material del elemento | `H30` |
| **Class** | Clase del elemento  | `8` |
| **Position** | Posición del elemento  | `+-200` |
| **IFC export** | Config. de exportación | - |
| **User field / UDAS** | Atributos del elementos  | - |
| **Dimensiones** | Largo y ancho del elemento |`3000 X 2400` |

- **1- Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "LOSA"
- **2- Profile**: Dimension del elemento, tienen dos maneras de editarse, en la pestaña de propiedades o en la parte superior o inferior del elemento.
- **3- Material**: Material del elemento, dependen de la base de datos de materiales, suele ser H25/H30/H35
- **4- Class**: Color del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "8", puede variar.
- **5- Position**: Modifica el punto o linea de inserción del elemento, en su profundidad
- **6- IFC Export** : Atributos y configuraciones de la exportación a IFC.
- **7- User field / UDAS**: Atributos tanto definidos por el usuario como los "userfield" estas filas tienen varios usos, tanto como la numeración, o especificaciones, estas filas pueden usarse para tablas, reportes, cuadros.
- **8- Dimensiones**: Largo y ancho, se edita desde el elemento.

![PROCEDIMIENTO SLAB](../img/hormigon/PROCEDIMIENTO%20SLAB.gif)
### Item

Son objetos modelados en 3D, que permiten colocarse en el modelo, dependen del Shape Catalog. Sus materiales son editables en base a la base de datos de materiales, son identificados por el organizer como elementos. 

![PROCEDIMIENTO ITEM](../img/hormigon/PROCEDIMIENTO%20ITEM.gif)

---

## Unidad de colada

<span style="color: red;">
Describir qué es una unidad de colada

Previo a usar unidades de colada, familiarizarse con las herramientas de selección de elementos, descriptas en... [Herramientas de modelado](../generalidades/generalidades.md#herramientas-de-modelado)

La unidad de colada es mandatoria para realizar reportes de armadura (planillas de doblado). Su creación, modificación y numeración se describe en el apartado del manual [Armaduras](./armaduras.md).

</span>

## Antes de modelar

Para modelar y ubicarnos respecto al proyecto debemos usar referencias externas a nuestro modelo, que permiten ubicar la estructura a modelar en el espacio.

<span style="color: red;">
El proyecto en el que estén modelando ya tendrá un modelo de Connect asociado. Allí habrá referencias a otros modelos y de otras disciplinas. Ver [Trimble - Ejecutor](../connect/connect-ejecutor.md) para detalle. En caracter general se describen cómo pueden tomar las referencias
  
</span>

- Referencias de Trimble Connect 
- Referencias externas del cliente
- Referencias internas del proyecto de otras disciplinas (si no estuviesen cargadas en Connect)

Es responsabilidad del LEP indicar cuáles son las estructuras vigentes del proyecto y a tener en cuenta en caso de existir interferencias.

Para referencias de Connect, ver [Connect - Ejecutor](../connect/connect-ejecutor.md)

---


## Atributos a modelar

Va a depender de IB/ID, definiciones de proyecto, pero en caracter general y como obligatorios tenemos los siguientes:

- NAME
- CLASS
- PROFILE
- MATERIAL
- UDAs (_Atributos definidos por el usuario_): es responsabilidad del LEP indicar cuáles se precisan, de acuerdo al preset de propiedades creado, descripto en [Preset Propiedades](../proyecto_nuevo/preset_propiedades.md)).


### NAME

Tabla de nombres posibles

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

### CLASS

La clase solo nos servirá para discriminar elementos en Trimble Connect con colores. Por simplicidad, seguir lo siguiente:

(no estoy encontrando online la cantidad total de clases con los colores..). Tenemos que armar una tabla con el numero de clase, el color (imagen en tabla) y objetos donde aplica


---

## Diseño de armaduras

Ver [Armaduras](./armaduras.md) para detalle de cómo modelar, tipo de armaduras, y reportes asociados.


---

## Miscelaneos

### Diseño de anclajes

Los anclajes son alcance de las estructuras de hormigón a nivel diseño. Para modelarlos tendremos que modelar la estructura metálica superior asociada (que luego podemos ocultar).

#### Calidades
Los materiales disponibles para anclajes son los siguientes. Si se precisa otro, se deberá sumar a la base de datos de materiales a nivel local en ese modelo:

- ASTM F1554 Gr.36
- ASTM F1554 Gr.55

A través del nombre del anclaje se indicará ANCLAJE_1 o ANCLAJE_2 de acuerdo a si se trata de primera o segunda etapa.


Para acelerar el análisis, utilizar el componente 1047 del TEKLA para modelar placas base, donde ya se encuentran varias configuraciones guardadas para distinto


{: .important}
> El largo por default de estas configuraciones será $12d_o$ para longitud embebida. La proyección siempre se considerará con doble tuerca. Ajustar de acuerdo a ingeniería en cada caso.

mati, para las configuraciones vamos a dejar lo siguiente:
- Doble tuerca superior
- Tuerca de nivelacion inferior
- Espesor de PB igual al diámetro considerado
- La proyección del anclaje (lo que sale del hormigon) será: Proyeccion = espesor grout + espesor PB + 3.0 X Diametros (redondeado a cm hacia arriba).
- El grout será 25mm hasta 3/4''. De 1'' para arriba ponemos 30mm

Los nombres de las configuraciones serán `HYT-200x200-6x15_1` y las haremos con el componente 1047. La idea del nombre es indicar tamaño, perfil asociado, y si es primera o segunda etapa. 

Las filas no las tengo del todo definidas aún, pero en columnas saltaremos de 50 en 50 como está ahora


| Perfil / Etapa | PB 200x200 | PB 250x250 | PB 300x300 | PB 350x350 | PB 400x400 |
|:---------------|:----------:|:----------:|:----------:|:----------:|:----------:|
| **W6x15 - 1°** | Config A1  | Config A2  | -          | -          | -          |
| **W6x15 - 2°** | Config B1  | Config B2  | -          | -          | -          |
| **UPN140 CAJON - 1°**| Config C1  | Config C2  | Config C3  | -          | -          |
| **UPN140 CAJON - 2°**| Config D1  | Config D2  | Config D3  | -          | -          |
| **W8 - 1°**    | Config E1  | Config E2  | Config E3  | Config E4  | -          |
| **W8 - 2°**    | Config F1  | Config F2  | Config F3  | Config F4  | -          |
| **W10 - 1°**   | -          | Config G2  | Config G3  | Config G4  | Config G5  |
| **W10 - 2°**   | -          | Config H2  | Config H3  | Config H4  | Config H5  |
| **W12 - 1°**   | -          | -          | Config I3  | Config I4  | Config I5  |
| **W12 - 2°**   | -          | -          | Config J3  | Config J4  | Config J5  |
| **W14 - 1°**   | -          | -          | -          | Config K4  | Config K5  |



### Antimaterial

Los antimateriales son piezas que generan un vacio en otro elemento, suelen utilizarse principalmente en las estructuras de hormigón.

![ANTIMATERIAL](../img/hormigon/ANTIMATERIAL.gif) 

1. Para crear un antimaterial, se debe crear una parte del tamaño a recortar (Para identificarlo mejor, se puede aumentar su altura y cambiar la clase.)

2. Al tener las dimensiones correctas, se coloca en la parte a recortar, luego en la pestaña de "edit" se selecciona "part cut" y se genera el corte.

3. Se elimina la parte cortante y el corte queda hecho


![PROCEDIMIENTO ANTIMATERIAL](../img/hormigon/PROCEDIMIENTO%20ANTIMATERIAL.gif)

{: .note}

>Los antimateriales quedan representados con una linea punteada, representando su corte en el material, son invisibles y no se exportan, sus propiedades otorgan que el material recortado aparezca como una pieza monolítica si así fue modelada.`

Los antimateriales modelados pueden aparecer o no, para reiniciar su forma de representación se puede tocar la opcion "Redraw View" para que se escondan, o borrar el material cortado y volver hacia atras para que vuelva a aparecer:

![REAPARICIÓN DE ANTIMATERIALES](../img/hormigon/PROCEDIMIENTO%20REAPARECER%20UN%20ANTIMATERIAL.gif)


### Publicar una fundación (NUEVO)

Aca podemos describir como guardar una serie de objetos (por ejemplo dado 1, y extenderlo a todo un proyecto, ya que ahora contamos con XS_PROJECT dentro de cada template)

Se indicarán pasos a modo de ejemplo con un dado de 60x60 con chapa embebida y armadura phi 8 c/15 tipo jaula. LLamarlo DADO_1_PAM25026
