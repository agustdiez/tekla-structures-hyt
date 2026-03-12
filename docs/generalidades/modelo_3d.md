---
title: Modelo 3D
layout: default_with_reading_time
parent: Generalidades
nav_order: 3
has_toc: true
---

# Modelo 3D
{: .no_toc }

El siguiente capítulo describe el orden de trabajo para modelado 3D en proyectos de ingeniería, definiendo estructura de responsabilidades, pautas y criterios uniformes de modelado para todas las especialidades.

Lo aquí indicado está sujeto a modificaciones en función del documento vigente respecto a la gestión de maqueta indicado en el [Índice](../index.md).

Para aplicación de dicho formulario a nivel Civil, referir al apartado [BIM](BIM.md).

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## Roles

### Coordinador de Modelo 3D
- Define alcance de modelado y genera el "Plan de Ejecución del Modelo 3D"
- Crea el MODEL KEY (sectorización del modelo)
- Gestiona estructura de carpetas y archivos navegables (*.nwf, *.nwd)
- Coordina revisiones internas y con cliente
- Emite minutas de Design Review

### Responsable de Modelo 3D por Especialidad
- Genera plan específico de la especialidad
- Nexo entre coordinador y proyectistas
- Confecciona lista de archivos según WBS
- Vela por incorporación de cambios en revisiones

### Proyectista de Modelo 3D
- Diseña elementos 3D según cronograma
- Verifica correcta implantación en modelo general
- Elabora reportes/entregables derivados del modelo
- Único con permiso de edición del modelo 3D

### Administrador de Software
- Soporte técnico e integración de herramientas
- Propicia resolución de conflictos de software
- Adecua procedimientos según lecciones aprendidas

## Ubicación de archivos

Los modelos se traducen en archivos que irán al modelo federado. Su exportación se trata en [BIM Publisher](bim_publisher.md). Se describen debajo los directorios actuales que tiene cada proyecto a nivel maqueta y para que sirve cada uno.

### Subdirectorios principales:
- `00-BACKUP`: Copias de seguridad e histórico
- `01-MODEL_KEY`: Archivo de sectorización y revisiones
- `02-3D_MODEL`: Archivos editables (*.dwg, *.ifc) por área/especialidad
- `03-SPECS`: Especificaciones del proyecto
- `04-REFERENCES`: Archivos de referencia
- `05-VIEWER`: Modelos Navisworks (*.nwf, *.nwd)
- `06-MISCELANEOUS`: Documentación de apoyo
- `07-DELIVERABLES`: Entregables
- `08-PLAN`: Plan de Ejecución del Modelo 3D

### Subestructura de 3D_MODEL:
Depende del proyecto (declarado en Plan de Ejecución):

**Caso 1 (Por Disciplinas):** Para proyectos pequeños  
**Caso 2 (Por Áreas):** Estructura por etapas/áreas/unidades, subdividida en:
- **`01-INTERCONNECTING:`** Interconexión por especialidad
  - `01-PIPING`
  - `02-EQUIPMENT`
  - `03-CIVIL`
  - `04-INSTRUMENTS`
  - `05-ELECTRICAL`
- **`02-MODULES:`** Módulos y skids

{: .important}
> Las rutinas deben dejar los archivos en las carpetas de ```3D-MODEL``` correspondientes. 
>
> Los .nwd que representan el modelo integrado del proyecto estarán en ```VIEWER```

## Pautas Generales de Modelado

Previo a comenzar el proyecto, deberá validarse la codificación de cada modelo a exportar en .ifc de acuerdo a los siguientes criterios. 

### Unidades de medición
Milímetros (o según lo declarado en Plan de Ejecución)

### Codificación de colores
Se puede aplicar por:
1. Disciplina
2. Estado de avance / Fase de construcción
3. Tipo de elemento
4. Propiedad técnica
5. Servicio de trabajo
6. Análisis de superficie

Definida en el Plan de Ejecución del Modelo 3D.

{: .important}
> La codificación de colores se hará siempre a través de la edición de atributos del modelo. Es responsabilidad del LEP determinar junto con el cliente la representación buscada.

### Nomenclatura de archivos
Según estándar ISO 19650 adaptado por HYTECH , o codificación del cliente si se requiere.

### Visualizador 3D
Modelo integrado periódico para navegación sin edición.

{: .important}
> El modo de visualizar los archivos definirán el **preset a utilizar** para exportar los modelos.
> La codificación definirá el **nombre** que deberán tener los archivos.

[← Volver al inicio](index.md)