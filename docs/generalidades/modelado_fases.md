---
title: Modelado de fases
layout: default_with_reading_time
parent: Generalidades
nav_order: 2
has_toc: true
---

# Modelado por fases
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}




## ¿Qué colocar en cada modelo?

Los elementos a colocar dentro de un modelo es a criterio del coordinador del modelo 3D del proyecto, y responde a la etapa de la ingeniería que se trate y la documentación a realizar para el proyecto.

Es buena práctica separar la **estructura metálica**, **estructuras de hormigón** y **fundaciones** en modelos distintos, ya que en general sus memorias de cálculo son independientes. A su vez, sistemas de drenajes, cámaras y underground asociado a E&I, modelo de enterrado existente, etc. deberán ser tratados como modelos aislados e independientes.

## Fases

A su vez, TEKLA cuenta con fases, el mismo es un atributo más que pueden asignarse a las partes que conforman un modelo. Funcionan como layers o capaz dentro del modelo.

A través del número de fase es posible copiar *ciertos elementos* que esten contenidos en una misma fase de un modelo a otro.

{: .note}
> Por defecto, el número de fase es 1.


Las fases recomendadas para los nuevos modelos, son: 

| Categoria                     | Fase (recomendada)|
|:------------------------------|:------------------|
| Estructuras de H°A            | 1                 |
| Estructuras Metalicas         | 2                 |
| Complementos Metalicos        | 3                 |
| Miscelaneos                   | 4                 |

Al unificar las fases por tipo de estructura, logramos poder uniformizar la manera de modelado. 

Las fases pueden cambiarse en cualquier momento desde el gestor de fases, ademas, es util a la hora de modelar grandes estructuras, permite la creación de filtros de modelado por fase. 

### Creación de fases:
 1. Abrir el gestor de fases
 2. En el encabezado de "Phase" seleccionar, `add`
 3. Reenumerar o modificar el nombre

### Modificación de fases:
1. Abrir el gestor de fases
2. Se seleccionan los objetos a modificar la fase
3. Se selecciona la fase a trasladar estos objetos
4. En el encabezado de "Objets" seleccionar, `Modify Phase`


![MODIFICAR FASES](../img/generalidades/CAMBIO%20DE%20FASES.gif)
*Figura 1: Creación y modificación de fases*

[← Volver al inicio](index.md)