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

(imagen templates)

### Codificación de modelos

Los códigos de los modelos deberán ser definidos de forma temprana en el proyecto con la codificación. Se sugiere que sean lo suficientemente descriptivos y con los patrones necesarios para poder ubicarse.

{: .highlight}
> La codificación del archivo de exportación es distinta al nombre que tomará el modelo. Dicha codificación se basa en los criterios indicados para los modelos federados en el manual de empresa. Ver [Modelo 3D](modelo_3d.md) para mayor detalle.

Se propone la siguiente codificación completa para modelos:

```
<COD_PROYECTO>-<LETRA>-<AREA>-<DESCRIPCION>
```
Por ejemplo, ```PAM25026-S_EM-04-SE_PRIN``` indica que se trata de un modelo:
- Perteneciente al proyecto ```PAM25026```
- ```S_EM``` nos indica en este caso que se trata de un modelo de senda y de estructura metálica
- ```04``` el área a la que pertenece
- ```SE_PRIN``` un texto que nos permite describir al modelo (en este caso, de la senda principal)

Otras letras que se sugieren son:
- ```FD```
- ```EM```
- ```L```
- ```S_FD``` o ```S_EM``` para indicar modelos de sendas
- ```ENT``` para modelos de enterrados

Para definición del área de proyecto, referir a [Modelo 3D](modelo_3d.md)


### Sincronización con Trimble Connect

El Trimble Connect es la herramienta de seguimiento que tiene el lider de especialidad o ingenieros para validar lo modelado y realizar comentarios. El flujo de uso del programa está definido en el capítulo de la documentación [Trimble Connect](../connect/index.md).

Por lo tanto, cualquier modelo deberá seguir el siguiente flujo

```mermaid
graph LR
    A[Creación de modelo] --> B[Modelado]
    B -->|XS_CONNECT_UPLOAD_MODEL_FOLDER| C[Upload]
    C --> D{¿Comentarios?}
    D -->|No| E[Modelo cerrado]
    D -->|Sí| B
```
El proyectista/ingeniero realiza cambios sobre el modelo y debe subirlos a la carpeta del proyecto de Trimble Connect.

Referir al apartado [Trimble Connect](../connect/index.md) para seteo del proyecto. Se menciona la propiedad avanzada que figura en el diagrama de flujo ya que se aconseja en proyectos grandes sectorizar los modelos en carpetas.

### Atributos de proyecto

Los siguientes atributos deben llenarse al inicio del proyecto. Estos atributos generales serán tomados en reportes y rótulos dentro del proyecto:

LLENAR MATI CON FOTO

### Definición Punto Base

Los proyectos suelen tener un punto base (`(0,0)` local) que está correlacionado con una coordenada geográfica del proyecto que se define al inicio del mismo. Dicho punto en coordenadas POSGAR quedará indicado en documentación del proyecto.

Sin embargo, las maquetas de los proyectos se trabajan en coordenadas locales y en `mm` en general.

Se debe definir un BASEPOINT de proyecto dentro del modelo, que en general se corresponde con `(0,0,100.000)` para que los modelos al exportar sean adecuados para la maqueta.

Referir a [Modelo 3D](modelo_3d.md) para detalle respecto al modelo federado.

(Foto mati)

### Referencias externas

Las referencias externas son aquellos archivos que se le cargan al modelo para auxiliar durante el modelado. Las referencias externas pueden subirse localmente (siempre en la carpeta ```./xref``` del modelo) o bien a Trimble Connect y cargar directamente la referencia/modelo en el TEKLA.

Instalar la extensión que permite cargar .nwd en el programa 

Si la maqueta está en continuo cambio, se recomienda armar una rutina que recopile los .nwd de cada área y los suba a Connect. Ver [Gestion de archivos](../avanzado/gestion_archivos.md) para mayor detalle.

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
   - **Strip Footing (Zapata Corrida)**: Fundaciones corridas
   - **Pile**: Pilotes
   - **Concrete Panel**: Paneles de hormigón

{: note}
> Los objetos más usuales a usar en estos proyectos se basan en BEAMS, PAD FOOTING, COLUMN y PLATE. En función del tipo de objeto, los atributos a presentar pueden variar y ser distinto, por lo que es importante modelar con un mismo criterio

1. **PERNOS/SOLDADURAS**: se pueden modelar individualmente pero en general se aplican a través de componentes.
2. **ARMADURAS**: hay distintos tipos de armaduras. Ver apartado dentro del capítulo [Armaduras](../hormigon/armaduras.md) para mayor detalle.
3. **ASSEMBLIES**: la licencia actual es de piezas de hormigón por lo que se podrán crear lo que se denominan unidades de colada
4. **ELEMENTOS AUXILIARES**: aquello que auxiliará durante el modelado.
   1. Grillas
   2. Objetos de construcción (linea, planos, circulos)
   3. Puntos
5. **COMPONENTES**: los componentes actúan como *macros* que permiten modelar objetos de forma automática de cuestiones que se repiten (por ejemplo, una viga de encadenado o una placa base). Cada sección de [Hormigón](../hormigon/index.md) o [Acero](../acero/index.md) cuenta con una biblioteca de componentes usuales para utilizar.

[← Volver al inicio](index.md)