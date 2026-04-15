---
title: Archivos de configuración
layout: default_with_reading_time
parent: Setup - Primeros pasos
nav_order: 3
has_toc: true
---

# Archivos de configuración de TEKLA
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}


## Archivos .ini

Los archivos de inicialización son archivos que lee el programa para cargar configuraciones particulares y seteo de propiedades avanzadas.

### ¿Para qué sirven?

Los archivos de inicialización se leen en un orden por defecto cuando se inicia Tekla Structures. Si diferentes archivos contienen las mismas configuraciones, las de los archivos que se lean más tarde anulan las de los archivos que se leyeron antes.

Para consultar qué archivos se han leído cuando se inicia Tekla Structures y el orden en que se han leído, seleccione en el menú Archivo > Registros > Registro historia sesión.

Lo importante y que en general se respeta es que si algo se define múltiples veces, el orden de escritura es desde FIRM a Modelo.



### user.ini

Este archivo contiene configuraciones personales de cada usuario.

Se menciona qué indica cada propiedad avanzada seteada dentro del archivo user.ini

```bash


set XS_FIRM=%TEKLA%\STD\FIRM # Esta propiedad mira a la carpeta de empresa
set XS_PROFDB=%TEKLA%\STD\FIRM\bd # Esta propiedad mira a las bases de datos
set XS_UEL_IMPORT_FOLDER=%TEKLA%\STD\FIRM\componentes_personalizados # Esta propiedad mira componentes personalizados
set XS_USE_USER_DEFINED_REBAR_LENGTH_AND_WEIGHT=TRUE # Necesario para PDH
set XS_PRODUCT_IDENTIFIER=FALSE # Para eliminar el logo de Tekla Structures de dibujos.
set XS_MODEL_TEMPLATE_DIRECTORY=%TEKLA%\STD\FIRM\proyectos # Templates de proyectos
set DXK_SYMBOLPATH=%DXK_SYMBOLPATH%;%XS_FIRM%\bitmaps;%XS_FIRM%\symbols # Carpetas de imágenes de la empresa
set XS_TEMPLATE_DIRECTORY=%XS_FIRM%\templates # Carpetas de cuadros y reportes

```

%TEKLA% es la variable de entorno seteada de acuerdo a [Variables de entorno](configuracion-inicial.md#definición-de-variable-de-entorno)

La responsabilidad de edición sobre este archivo recae exclusivamente en el administrador de disciplina de modelos 3D. 

### options.ini

Los archivos options.ini que contienen configuraciones del modelo específicas de la empresa o del proyecto se guardan y se leen en las ubicaciones definidas por el usuario especificadas con las opciones avanzadas XS_​FIRM y XS_​PROJECT. Para usar estos archivos, debe copiar o mover un archivo options.ini a estas ubicaciones.

Usamos los options.ini para setear propiedades del modelo particulares, como por ejemplo donde se guardan los modelos al subirlos al proyecto de Trimble Connect. Ver [Trimble Connect](../connect/index.md) para detalle.

---

[← Volver al inicio](index.md)
