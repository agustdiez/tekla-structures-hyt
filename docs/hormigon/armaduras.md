---
title: Diseño de armaduras
layout: default_with_reading_time
parent: Hormigón
nav_order: 2
has_toc: true
---

# Configuración inicial
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}
---
## TIPOS DE ARMADURA
Tekla permite modelar armaduras, siendo estas elementos cilindricos lineales, la forma esta definida por el "rebar shape catalog". Actualmente se encuentran disponibles 4 catalogos dependiendo de la calidad y tipo de acero. Estos catalogos definen el tamaño de la barra:

- ADN-420
- AL-220
- AM500
- ATR500

![REBAR SIZE CATALOG](../img/hormigon/ARMADURA_TAMAÑO.gif)

{: .note}

> La definición de la armadura, queda a cargo del Revisor / Ingeniero / LEP. **Puede variar según avanza el proyecto** (tanto en cantidad, separación y tamaño)

Existen varias maneras de modelar la armadura de una estructura, las mas utilizadas suelen ser: 

### BAR GROUP (GRUPO DE BARRAS):

Modelar armadura por grupo de barras permite diseñar la forma de la armadura y repetirla a lo largo de un recorrido a reforzar. Una vez establecida la forma y el patron crea un camino editable en cuanto a la separación de armadura definida por el usuario.

1. **Definición de propiedades:** inicialmente, se selecciona la calidad de la armadura, el tamaño de la barra y finalmente la clase

![ARMADURA_CONFIGURACIÓN](TeklaStructures_Ik2Rhab8Ka.gif)

2. **Definición de forma**: Se selecciona la parte a reforzar y se dibuja la forma de la armadura.
3. **Patron a reforzar**: Luego de definir la forma se debe indicar el camino que reforzará la armadura.

![ARMADURA_PROCEDIMIENTO](../img/hormigon/ARMADURA_PROCEDIMIENTO.gif)

4. **Separación**: Una vez generada la armadura, se debe modificar la separación, hay varias opciones para modificarla
   1. Equal distribution: distribuye las barras equitativamente bajo dos opciones, por cantidad de barras o por un espaciado objetivo.
   2. By exact spacings: Distribuye las barras según una separación exacta. Tiene varias posibilidades de edición: 
        1. By exact spacing with flexible last and first space siendo la primera y ultima posición variables 
        2.  By exact spacing with flexible middle siendo las posiciones del 
        medio variables

![ARMADURA_SEPARACIÓN](../img/hormigon/ARMADURA_SEPARACIÓN.gif)

5. **Retoque de propiedades**: Por ultimo, se pueden modificar propiedades especificas, o que quedan en segundo plano a la hora de dibujar la armadura. 
    1. Hooks: pueden ser editados tanto al principio como al final de la armadura. Se recomienda empezar con alguna de las opciones por defecto ya que establecen el radio de doblado permitido por el tamaño y calidad de la barra. Si se quiere editar el largo del gancho, o cambiar el angulo, se recomienda editarlo con la opcion "Custom Hook"
    2. Cover thickness: Permite modificar el recubrimiento de la armadura, tanto en plano como en largo. 

![ARMADURA_HOOKS](../img/hormigon/ARMADURA_HOOKS.gif)





### REBAR SET 

### MESH (MALLA)

---
## PROPIEDADES

## UNIDAD DE COLADA
ARMADURA EN PARTES PARTES A UNIDAD DE COLADA 

### PROPIEDADES DE UNIDAD DE COLADA
NO USAR PRECAST, USAR VERTIDO EN SITIO 

PEDIR EMA NUMERACIÓN (en proceso)


## NUMERACIÓN

## PLANILLA DE DOBLADO (PDH)

## EMPALMES

## ANCLAJES



---
## LISTADO DE COMPONENTES

[← Volver al inicio](index.md)