---
title: ✅Checklist de modelado
layout: default_with_reading_time
parent: Hormigón
nav_order: 3
has_toc: true
---

# Checklist Hormigón
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## Introducción

Estas verificaciones estan pensadas para el modelado de fundaciones en una ingenieria de detalle, en caso de estar en ingenieria básica se deben de omitir los pasos referidos a la armadura. Las mismas detallan un responsable dentro del proceso, siendo:

1. **LEP** (Lider de especialidad de proyecto) 
2. **EJE** (Ejecutor)
3. **ET** (Especificaciones tecnicas)
4. **MC** (Memoria de calculo)

### Paso 1 - Verificaciones previas

| Paso | Descripción | Responsable | Check |
|------|-------------|-------------|-------|
| 1.1 | [Verificar recubrimiento proyecto](../faq/faq.md#especificaciiones-tecnicas) | ET | [ ] |
| 1.2 | [Verificar calidad del hormigón proyecto](../faq/faq.md#especificaciiones-tecnicas) | ET | [ ] |
| 1.3 | [Cargar referencias](../faq/faq.md#cargar-referencias) | EJE | [ ] |
| 1.4 | [Definición de punto base](../faq/faq.md#definición-de-punto-base) | LEP | [ ] |
| 1.5 | [Configurar grillas](../faq/faq.md#configurar-grillas) | EJE | [ ] |

### Paso 2 - Modelando elementos de hormigón

| Paso | Descripción | Responsable | Check |
|------|-------------|-------|-------|
| 2.1 | [Nombre correcto del la fundación](../hormigon/elementos.md/#name)  |  EJE  | [  ] |
| 2.2 | [Tamaño de la fundación](../faq/faq.md#memorias-de-calculo-información) |  MC  | [  ] |
| 2.3 | [Altura de la fundación](../faq/faq.md#memorias-de-calculo-información) |  MC  | [  ] |
| 2.4 | [Calidad correcta del hormmigón](../faq/faq.md#especificaciiones-tecnicas) |  ET  | [  ] |
| 2.5 | [Class correcta de la fundación](./elementos.md/#clases) |  EJE  | [ ] |
| 2.6 | [Transformar unidad de colada](../hormigon/armaduras.md#unidad-de-colada) | EJE | [  ] | [  ] |
| 2.7 | [Modelado de anclajes](../hormigon/elementos.md#diseño-de-anclajes)  |  EJE  | [  ] |

### Paso 3 - Validando lo modelado

| Paso | Descripción |  Responsable | Check |
|------|-------------|-------|-------|
| 3.1 | [¿La fundación está ubicada correctamente según el equipo / cañeria / soporte?](../faq/faq.md#ubicación-de-fundaciones) |  EJE / LEP  | [ ] |
| 3.2 | [¿La fundación está chocandose con alguna otra fundación?](../faq/faq.md#ubicación-de-fundaciones) | EJE / LEP | [ ] |
| 3.4 | [¿La fundación está chocandose con algún equipo / objeto?](../faq/faq.md#ubicación-de-fundaciones)  |  EJE / LEP  | [ ] |
| 3.5 | [¿La fundación está en contacto con el terreno?](../faq/faq.md#ubicación-de-fundaciones)  | EJE | [ ] |
| 3.6 | [¿El NSH de la fundación es correcto?](../faq/faq.md#ubicación-de-fundaciones) |  MC  | [ ] |
| 3.7 | [¿Se pueden redondear coordenadas?](../faq/faq.md#ubicación-de-fundaciones)  |  EJE  | [ ] |


### Paso 4 - Modelando armadura

| Paso | Descripción |  Responsable | Check |
|------|-------------|-------|-------|
| 4.1 | [¿La armadura está dentro de la parte?](../faq/faq.md#modelado-correcto-de-la-armadura) | [ ] | [ ] |
| 4.2 | [¿La armadura tiene la separación correcta?](../faq/faq.md#modelado-correcto-de-la-armadura) | [ ] | [ ] |
| 4.5 | [¿El recubrimiento de la armadura es correcto?](../faq/faq.md#modelado-correcto-de-la-armadura) | [ ] | [ ] |
| 4.6 | [¿Los ganchos y empalmes están correctamete modelados?](../faq/faq.md#modelado-correcto-de-la-armadura) | [ ] | [ ] |
| 4.3 | [¿La armadura está correctamente modelada?](../faq/faq.md#modelado-correcto-de-la-armadura)  | [ ] | [ ] |



[← Volver al inicio](index.md)