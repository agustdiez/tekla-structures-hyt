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


---

## Descripción de elementos

Tekla permite modelar estructuras de hormigon armado, este capitulo se centra en la creación de objetos de H°. Hay 4 principales opciones en el modelado. 

![RIBBON-H°A°](../img/hormigon/RIBBON-H°.png)

### Footing

Elementos en contacto con el suelo que distribuyen las cargas provenientes de la estructura. `Suele ser la función mas utilizada para modelar cualquier fundación independientemente de la forma`

![RIBBON FOOTING](../img/hormigon/RIBBON-FOOTING.gif)
 
![DESCRIPCIÓN FOOTING](../img/hormigon/DESCRIPCIÓN%20FOOTING.png)

**Atributos importantes**:

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

- **1- Name**: Nombre del elemento, generalmente se suele definir antes del empezar el proyecto, como valor recomendado se puede definir "ZAPATA" o "BASE AISLADA"
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

Son elementos superficiales horizontales o inclinados que trabajan en dos direcciones.

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

## Antes de modelar

- Referencias de connect
- Referencias externas de cliente
- Referencias internas del proyecto de otras disciplinas

EL Lep deberá indicar a quien modele lo que debe tomar como información valida y tener en cuenta

Para referencias de Connect, ver [Connect - Ejecutor](../connect/connect-ejecutor.md)

---

## Atributos a modelar

Va a depender de IB/ID, definiciones de proyecto, pero en caracter general:

---

## Diseño de armaduras

Ver [Armaduras](./armaduras.md) para detalle de cómo modelar, tipo de armaduras, y reportes asociados.


---

## Miscelaneos

### Diseño de anclajes

Referir a los componentes que lo modelan y derivar a la tabla de conexiones


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

### Tipo de fundaciones

Se presenta listado de tipo de fundaciones.

Lo complejo suele ser el armado de las mismas. para esas definciiones ver [Armaduras](./armaduras.md)