---
title: Importar desde STAAD
layout: default_with_reading_time
parent: Acero
nav_order: 3
has_toc: true
---

# Importar FEM
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## ¿Qué significa FEM?

`FEM = Finite Element Method`

Por modelo de elementos finitos entendemos a métodos numéricos para resolver ecuaciones diferenciales sobre elementos simples (barras, placas) con cierta condición de borde.

A fines de este alcance, basta con entender a los FEM como aquellos modelos de barras que serán datos de entrada para el TEKLA y modelado de partes. Esto significará traer al TEKLA múltiples elementos de barra separados por nodos, con una determinada geometría.

## Opciones de importación

El TEKLA presenta las siguientes opciones. Se indica en la foto debajo cada pestaña. **En la empresa, se utiliza principalmente el STAAD Pro**. No se cubren aquí otros programas los cuales el TEKLA puede importar como puede ser el SAP 2000.

## Importar desde STAAD

Se dan a continuación requisitos a tener en cuenta en ambos programas para importar los modelos

### Requisitos STAAD

En versiones recientes de STAAD, se incorporan bases de datos adicionales al programa.

**Se deben utilizar las bases hoy llamadas LEGACY**, para lograr que al importar los perfiles se vean de acuerdo con el nombre.

![BD_Standard](../img/acero/BD_STD.gif)
_Figura 1: Base de datos Standard_

![BD_Legacy](../img/acero/BD_Legacy.gif)
_Figura 2: Base de datos Legacy_

{: .important}
>Los ángulos deben cargarse en versión americana (pulgadas).

{: .warning}
> En caso de requerir utilizar la base de datos "Standard", dar aviso a quien modele para que sepa cómo se debe modelarse la barra, si es que se precisase por secciones compuestas.


### Requisitos TEKLA

Para importar en TEKLA se debe,

1. Crear una instancia de modelo FEM en el programa
![FEM](../img/acero/TeklaStructures_5N6ITk9S0O.gif)


2. Definir propiedades generales

![alt text](../img/acero/propiedades_gen.png)

```
(1): ruta al archivo .std (el modelo de STAAD)
(2): origen del archivo. STAAD en nuestro caso
(3): origen a desplazar la estructura en el espacio si ya se conoce su implantación.
(4) : posibilidad de combinar o no. Útil si hay demasiados nodos
```
3. Definir material dentro de la hoja STAAD: por defecto F24

4. Ajustar archivos de perfil de conversión (si hiciese falta)

Para sintaxis del archivo ver el siguiente apartado.

{: .warning}
>La configuración actual permitirá traer doble ángulo, pero no permite disponerlos en cruz (no es posible lograrlo), por lo que se omite la conversión en ese caso, para que sea explicito que debe modelarse el `Twin Profile` directamente en TEKLA.

![ConversionFIle](../img/acero/conversion_files.png)




### Archivos de conversión

{: .highlight}
>Los archivos de conversión son archivos de texto simples que contienen el nombre de Tekla Structures en la primera columna y el nombre utilizado en el otro paquete de software en la segunda columna. Las columnas están separadas por un espacio. Todos los perfiles paramétricos deben ingresarse en el archivo de conversión de perfiles.

Se deja a continuación los perfiles que están en el archivo de conversión. En caso de requerir algún perfil que no esté en el listado, guardar el archivo sumándolo y dejarlo a nivel modelo para su lectura.



[← Volver al inicio](index.md)