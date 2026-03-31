---
title: Elementos de acero
layout: default_with_reading_time
parent: Acero
nav_order: 1
has_toc: true
---

# Configuración inicial
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

Aca iría la descripcion de los elementos de TEKLA de hormigón, cuándo usar cada uno, con usos recomendados

Foto del ribbon

### Beam

### Column

### Placa

### Bolt

Describir para qué sirve y como se modela a nivel propiedaees. Va a componentes de forma automatica

### Weld

Describir para qué sirve y como se modela a nivel propiedaees. Va a componentes de forma automatica


---

## Antes de modelar

- Referemcoas de connect
- Referencias externas de cliente
- Referencias internas del proyecto de otras disciplinas

EL Lep deberá indicar a quien modele lo que debe tomar como información valida y tener en cuenta

Para referencias de Connect, ver [Connect - Ejecutor](../connect/connect-ejecutor.md)

Es altamente probable que se tenga un modelo de elementos finitos de la estructura. Ver [Importacion FEM](./importacion_FEM.md) para detalle de como importar modelos.


## Atributos a modelar

Va a depender de IB/ID, definiciones de proyecto, pero en caracter general:



## Diseño de conexiones

Solo aplicable en ID salvo detalles puntuales en IB. Indicar las conexiones típicas presentas y derivar al capitulo de conexiones

Ver [Conexiones](./conexiones.md) para detalle de cómo modelar, tipo de armaduras, y reportes asociados.

## Componentes

Se incluyen los componentes en el apartado [Conexiones](./conexiones.md)


## Proyectar la estructura

### Modularizacion

Hablar con el ingeniero para entender como se debe modularizar la estructura. esto nos definirá que uniones son abulonadas y cuales soldadas

### Chapas de nudo

Angulo de 30° en uniones soldadas

Uniones abulonadas

### Distancias entre bulones, distancias a borde y distancias a perfiles

### Placa base

Distinguir los tipo de placa base que se pueden tener. 

### Grating







[← Volver al inicio](index.md)