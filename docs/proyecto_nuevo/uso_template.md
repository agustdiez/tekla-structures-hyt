---
title: Uso del template
layout: default_with_reading_time
parent: Un proyecto nuevo...
nav_order: 3
has_toc: true
---

# Uso del template
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## Crear un nuevo modelo

Para crear un nuevo modelo utilizando un template existente deben seguirse los siguientes pasos:

1. Validar el nombre del modelo junto con el LEP del proyecto, en función de la codificación descripta en [Codificación de modelos](../generalidades/generalidades.md#codificación-de-modelos).
2. Definir el alcance del modelo a nivel documentos a realizar.
3. Crear nuevo modelo, eligiendo el template del proyecto en el menú principal.
4. Validar tener en los dibujos los rótulos cargados.

## Cambios sobre el template

Se describen posibles cambios que harán sobre el template existente por nuevas necesidades. Referir al apartado [Orden de lectura](uso_template.md#orden-de-lectura) en caso de no saber cómo es el orden en que entran los archivos al programa.

- Alterar rótulos del proyecto por problemas para que entren las notas, mayor cantidad de documentos de referencia, etc.
- Crear nuevos atributos sobre el modelo
- 

Se describe como realizar cada uno de esos cambios a continuación:

### Alterar rótulos

{: .highlight}
> Los rótulos constan de dos archivos:
> - Los `.tpl` que se usan como cuadros.
> - Los `lay` que organizan los cuadros en un determinado layout. Este archivo condensa todas las configuraciones posibles para distintos tamaños de hoja.

Por lo tanto, el template vive en un modelo aparte que no debe tocarse. Las modificaciones a cuadros deberá hacerse de forma local.

Para lograr esto, se deberán guardar ambos tipos de archivo en la carpeta ...

### Crear nuevos atributos para un modelo


## Orden de lectura

## Preset de propiedades

Los archivos .ifc son los archivos entregables de la maqueta y que formarán parte de los modelos federados. Básicamente se trata de archivos que combinarán elementos geométricos con información. Cada parte contendrá una serie de atributos que ya vendrán definidos de forma predefinida en el preset de empresa.

A modo informativo, se dejan a continuación todos los atributos con los que sale la configuración vigente de archivos .ifc

{: .important}
> Cualquier solicitud de información adicional por el cliente deberá ser tomada por el LEP del proyecto con asistencia del gestor de modelo 3D Civil para incorporar dichos atributos al modelo entregable al cliente.

El **preset de propiedades** consta de todos aquellos atributos que contendrán los modelos `.ifc` que se exporten desde el modelo o utilizando el [BIM Publisher](../generalidades/bim_publisher.md)

Se describen los pasos para crear uno nuevo, aunque la configuración utilizada actualmente (`nombre_config`) es muy completa y cubre gran cantidad de atributos que se precisan tener a mano en la maqueta.


 


[← Volver al inicio](index.md)