---
title: Filtros
layout: default_with_reading_time
parent: Ejemplos
nav_order: 3
has_toc: true
---

# Ejemplos Filtros
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## Descripción de filtros
Vamos a explicar el uso de los filtros mediante un ejemplo, en este caso el filtro del "Grating". La idea de este filtro es visualizar dentro del model cuando un grating modelado no cumple con ciertos requerimientos comerciales. Por ende para esto crearemos dos filtros de selección.

{: .important}
> Este filtro es importante para quienes modelan, ya que el peso extraido de los elementos depende de que estén visualizando correctamente el grating que se modele.

{: .warning}
>Previamente se crearon los materiales con los dichos requerimientos comerciales para ser utilizados en el filtro, y estos se podrán visualizar en el [Material catalog](../generalidades/generalidades.md#material-catalog).

1. Creación del filtro

    1. Para crear el filtro lo primero que hacemos es acceder a los filtros desde el model: ![simbolo filtro de seleccion model](../img/dibujo/simbolo%20filtro%20de%20seleccion%20model.png)

    2. Se ingresa al `Selection filter` y en base a otro filtro, cambiamos el nombre y ponemos `Save as` para que se guarde el filtro con el que comenzaremos a trabajar.

    3. Luego seleccionando en opciones avanzadas: ![opciones avanzadas filtros](../img/dibujo/opciones%20avanzadas%20filtros.png) todos los filtros diponibles (View filter, Object representation, All drawing types, Selection filter, Organizer). Quizás no se usen todos pero para asegurarse que se cree en cada uno de estos lugares.

    4. En este caso teniamos 6 variantes de Grating que filtrar, por lo que se optó por modelarlas con medidas pequeñas y con las propiedades que necesitamos que nuestro filtro determine, para luego colocar `Select from model...` y así elegir las propiedades más facilmente.

    5. Primero visualizamos como queremos que este formado nuestro filtro, en nuestro caso la linea de filtro quedaría de la siguiente manera:
    `(PL25 And "REJILLA 3050 - 25x25") or (PL32 And "REJILLA 3050 - 32x2") or...`
    El filtro seleccionará los elementos que cumplan que su "Profile" es PLXX y que a su vez su "Material" es "REJILLA 3050 - YYxYY".

    6. Para lograr lo que planteamos en el paso "v." lo primero que se hace es añadir dos nuevas condiciones (`Add row`). 
    7. Las dos condiciones se estructurarán como planteamos en el paso "v." que se leería como: `si el objeto es una "part" y su "profile" es de "PL25" y además el objeto (que es una parte) tiene como material a "REJILLA 3050 - 25x25", entonces se podrá seleccionar`. y así con los otros 6 elementos.

![ejemplo filtro hyt grating](../img/dibujo/ejemplo%20filtro%20hyt%20grating.png)
*Figura 1: Output filtro de grating*

Luego creamos otro filtro que permitirá seleccionar a todos los "Gratings" que no cumplan con las propiedades explicadas en el filtro anterior.

En este caso lo único distinto sería a partir del paso "5." donde en este caso optamos por filtrar primero que se seleccionen solo los elementos que el material comience por "REJ" (aunque podria ser "REJILLA") para que no se seleccionen todos los otros elementos del modelo. Luego el filtro sería de la misma manera, solo que en este caso se coloca un `Does not equal` en el "Profile", ya que es el único parámetro que al modelar podría tener un error (el material no puede modificarse). La lógica es la siguiente:
`Si el objeto es una "part" donde su material comienza con el valor "REJ" y su "profile" no es igual a PL25 y su Material es "REJILLA 3050 - 25x25, entonces se podrá seleccionar.` continuando con los demás elementos. 

![ejemplo filtro hyt no grating](../img/dibujo/ejemplo%20filtro%20hyt%20no%20grating.png)
*Figura 1: Output filtro de no-grating*

## Filtros de representacion
Para acceder a los filtros de representación iremos a las propiedades de vista. 

![View filter y object representation](../img/dibujo/View%20filter%20y%20object%20representation.png)
*Figura 2: View properties*.

Una vez allí en (1) podremos acceder a `Object representation` y en (2) a `View filter`. En nuestro caso nos interesa usar (1), ya que nuestro objetivo final es que cuando el grating esté bien modelado este aparezca en color verde, y cuando no esté bien aparezca en rojo.

![propiedades Object representation](../img/dibujo/propiedades%20Object%20representation.png)
*Figura 3: Propiedades Object representation.*

Dentro de `Object representation` crearemos nuestro filtro, teniendo en cuenta que el orden en que este filtra es descendente desde arriba hacia abajo. La lógica que vemos en la **FIGURA 3** sería la siguiente:
`Lo que corresponde a HYT-GRATING pintarlo de color verde, luego lo que corresponde a HYT-GRATING ERROR pintarlo de rojo y por último el resto de las cosas modeladas pintarlas de gris`.

{: .note}
> Para terminar de entender la lógica del orden de las condiciones, si pusiera arriba de todo el filtro de `All` y luego colocara los filtros verde y rojo, todo se seguiría viendo en gris, porque manda el primer filtro.

{: .highlight}
> Se puede acceder a los `Selection filter` usando en el teclado `Ctrl + G`

{: .warning}
> Una vez que se haya modelado el Grating, abierto y cerrado el modelo, es probable que los elementos se vean todos con el color del object group "All". Para solucionarlo puede cambiarse un parámetro cualquiera de las propiedades de los gratings para luego volverlo a colocar con su forma original, esto le dará el color que le asignamos en el filtro.

En el siguiente video mostramos el ejemplo desarrollado en este apartado:

<iframe width="900" height="506" src="https://www.youtube.com/embed/M1iL3ZNzTxY?si=IYVwqx9k9x2LgZFq" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay=1 ; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>



[← Volver al inicio](index.md)