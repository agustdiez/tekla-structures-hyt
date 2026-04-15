---
title: Generalidades TEKLA
layout: default_with_reading_time
parent: Generalidades
nav_order: 1
has_toc: true
---

# Generalidades TEKLA
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## Antes de modelar

Se describen a continuación distintos apartados generales del modelado que deben tenerse en cuenta previo a comenzar un proyecto.

### Template de modelo

Previo al inicio de un proyecto, existen tareas que deben realizarse con antelación:

1. **Armado de rótulos**: de forma genérica se deberán crear 5 archivos de rótulos distintos en distintos tamaños. Referir a [Cuadros Rótulos](../reportes/cuadros-rotulos.md) para mayor detalle.
2. **Armado de template**: en caso de ser un cliente nuevo en la empresa deberá armarse un template del cliente. 

{: .note}
> El template del cliente se realiza tomando el template de empresa y seteando propiedades adicionales tales como XS_PROJECT, apúntandolas a la carpeta correspondiente al cliente.

3. Una vez creado el template, debe hacerse un *Save As* del modelo como template, darle una miniatura del cliente y dejarlo alojado en la carpeta de empresa correspondiente a los templates.

4. Realizados estos pasos, cualquier usuario podrá ver los templates de cliente disponibles al abrir el programa.

![Templates TEKLA](../img/generalidades/templates.png)

### Codificación de modelos

Los códigos de los modelos deberán ser definidos de forma temprana en el proyecto con la codificación. Se sugiere que sean lo suficientemente descriptivos y con los patrones necesarios para poder ubicarse.

{: .highlight}
> La codificación del archivo de exportación es distinta al nombre que tomará el modelo. Dicha codificación se basa en los criterios indicados para los modelos federados en el manual de empresa. Ver [Modelo 3D](modelo_3d.md) para mayor detalle.

Se propone la siguiente codificación completa para modelos:

```
<CAT>-<#AREA>-<ÚLTIMOS 4 DÍGITOS DEL DOC>-<DESCRIPCIÓN>
```

`<CAT>` corresponde a la categoría del modelo. Las categorías habilitadas son las siguientes:
- *`LY`* : Layouts de cualquier naturaleza.
- *`TIP`* : Típicos de cualquier naturaleza (cámaras, pasarelas, barandas, escaleras, fundaciones típicas, entre otros).
- *`EM`* : Estructura metálica.
- *`FD`* : Fundación.
- *`EH`* : Estructura de hormigón.

Por ejemplo, ```LY-02-1256-SOPORTES_AREA02``` indica que se trata de un modelo:
- De categoría ```LAYOUT```
- ```02``` nos indica el área del modelo
- ```1256``` los últimos 4 dígitos del documento en el proyecto
- ```SOPORTES_AREA02``` una descripción del documento para rápida referencia.

Para definición del área de proyecto, referir a [Modelo 3D](modelo_3d.md)


### Sincronización con Trimble Connect

El Trimble Connect es la herramienta de seguimiento que tiene el lider de especialidad o ingenieros para validar lo modelado y realizar comentarios. El flujo de uso del programa está definido en el capítulo de la documentación [Trimble Connect](../connect/index.md).

Cualquier modelo deberá seguir el siguiente flujo básico:

```mermaid
graph LR
    A[Creación de modelo] --> B[Modelado]
    B -->|XS_CONNECT_UPLOAD_MODEL_FOLDER| C[Upload]
    C --> D{¿Comentarios?}
    D -->|No| E[Modelo cerrado]
    D -->|Sí| B
```
El proyectista/ingeniero realiza cambios sobre el modelo y debe subirlos a la carpeta del proyecto de Trimble Connect.

Referir al apartado [Trimble Connect](../connect/index.md) para seteo del proyecto. Se enfatiza el uso de la propiedad avanzada que figura en el diagrama de flujo ya que se aconseja en proyectos grandes sectorizar los modelos en carpetas y no tener nucleados todos los modelos bajo una misma carpeta.

### Atributos de proyecto

Los siguientes atributos deben llenarse al inicio del proyecto. Estos atributos generales serán tomados en reportes y rótulos dentro del proyecto:

LLENAR MATI CON FOTO

### Definición Punto Base

Los proyectos suelen tener un punto base (`(0,0)` local) correlacionado con una coordenada geográfica que se define al inicio. Dicho punto en coordenadas POSGAR estará indicado en la documentación del proyecto.

Sin embargo, las maquetas de los proyectos se trabajan en coordenadas locales y en `mm` generalmente.

Definir un BASEPOINT de proyecto dentro del modelo, que generalmente corresponde a `(0,0,100.000)`, para que los modelos sean adecuados al exportar a la maqueta.

Referir a [Modelo 3D](modelo_3d.md) para más detalles respecto al modelo federado.

(Foto mati)

### Referencias externas

Las referencias externas son archivos que se cargan al modelo para auxiliar durante el modelado. Pueden subirse localmente (siempre en la carpeta `./xref` del modelo) o bien a Trimble Connect para cargar directamente la referencia/modelo en Tekla.

Instalar la extensión que permite cargar .nwd en el programa 

Si la maqueta está en continuo cambio, se recomienda armar una rutina que recopile los .nwd de cada área y los suba a Connect. Ver [Gestión de archivos](../avanzado/gestion_archivos.md) para mayor detalle.

## Tipos de elementos

Hay distintos tipos de elementos a nivel modelo:

1. **PARTES**
Son los elementos principales de la estructura.

   - **Beam (Viga)**: Elementos lineales (vigas, columnas, diagonales)
   - **Column (Columna)**: Elementos verticales
   - **Polybeam**: Vigas con trayectoria poligonal
   - **Curved Beam**: Vigas curvas
   - **Orthogonal Beam**: Vigas ortogonales
   - **Contour Plate (Placa de Contorno)**: Placas definidas por contorno
   - **Pad Footing (Zapata)**: Fundaciones tipo zapata



{: note}
> Los objetos más usuales a usar en estos proyectos se basan en BEAMS, PAD FOOTING, COLUMN y PLATE. En función del tipo de objeto, los atributos a presentar pueden variar y ser distinto, por lo que es importante modelar con un mismo criterio

2. **PERNOS/SOLDADURAS**: se pueden modelar individualmente pero en general se aplican a través de componentes.
3. **ARMADURAS**: hay distintos tipos de armaduras. Ver apartado dentro del capítulo [Armaduras](../hormigon/armaduras.md) para mayor detalle.
4. **ASSEMBLIES**: la licencia actual es de piezas de hormigón por lo que se podrán crear lo que se denominan unidades de colada y que se cubre en los capitulos correspondientes dentro de [Hormigón](../hormigon/index.md).
5. **ELEMENTOS AUXILIARES**: aquello que auxiliará durante el modelado.
   1. Grillas
   2. Objetos de construcción (linea, planos, circulos)
   3. Puntos
6. **COMPONENTES**: los componentes actúan como *macros* que permiten modelar objetos de forma automática de cuestiones que se repiten (por ejemplo, una viga de encadenado o una placa base). Cada sección de [Hormigón](../hormigon/index.md) o [Acero](../acero/index.md) cuenta con una biblioteca de componentes usuales para utilizar.

## Herramientas de modelado

Se describen herramientas de modelado a continuación que resultan indispensables para el modelado rápido y eficas de las partes.

### Selectores de partes y unidades de colada

### Modificación directa (Crtl+D)

#### Alargar varios objetos

#### Desplazar algunos puntos del objeto


[← Volver al inicio](index.md)