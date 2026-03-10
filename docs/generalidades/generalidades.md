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


[← Volver al inicio](index.md)

## Modelos

### Template de modelo

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

### Atributos de proyecto

### Referencias externas


## Tipos de elementos

## Metodología típica para modelar