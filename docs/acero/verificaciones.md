---
title: ✅Checklist de modelado
layout: default_with_reading_time
parent: Acero
nav_order: 4
has_toc: true
---

# Configuración inicial
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}


## Introducción

Estas verificaciones estan pensadas para el modelado de estructuras de acero en una ingenieria de detalle, en caso de estar en ingenieria básica se deben de omitir los pasos referidos al diseño de conexiones (salvo en casos de IB especiales o donde se pretenda mostrar como se modularizan las piezas). Las mismas detallan un responsable dentro del proceso o quien debe proveer el dato de entrada, siendo:

1. **LEP** (Lider de especialidad de proyecto) 
2. **EJE** (Ejecutor)
3. **ET** (Especificaciones tecnicas)
4. **MC** (Memoria de calculo)

{: .highlight}
> Niveles a conocer para planos de estructuras
> **NSA | TOS**: Nivel Superior de Acero | Top Of Steel
> **NIA | BOS**: Nivel Inferior de Acero | Bottom of Steel
> **BOP**: Bottom of Pipe
> **NSH | TOC**: Nivel Superior de Hormigón | Top of Concrete
> **NPT**: Nivel de Piso Terminado
> **NTN**: Nivel de terreno natural
> **NTT**: Nivel de terreno terminado
> **EL|ELEV.**: Elevación


### Paso 1 - Verificaciones previas

| Paso | Descripción | Responsable | Check |
|------|-------------|-------------|-------|
| 1.1 | [Verificar familias de perfiles](../faq/faq.md#especificaciones-técnicas) | ET | [ ] |
| 1.2 | [Verificar calidad del acero](../faq/faq.md#especificaciones-técnicas) | ET/LEP | [ ] |
| 1.3 | [Cargar referencias](../faq/faq.md#cargar-referencias) | EJE | [ ] |
| 1.4 | [Definición de punto base](../faq/faq.md#definición-de-punto-base) | LEP | [ ] |
| 1.5 | [Configurar grillas](../faq/faq.md#configurar-grillas) | EJE | [ ] |

### Paso 2 - Modelando elementos de acero

| Paso | Descripción | Responsable | Check |
|------|-------------|-------|-------|
| 2.1 | [Importar modelo de STAAD (si existe)](../acero/importacion_FEM.md)  |  MC  | [  ] |
| 2.2 | [Corregir perfiles o agregar si hiciese falta](../acero/importacion_FEM.md#archivos-de-conversión) |  MC  | [  ] |
| 2.3 | [Proyectar la modularización de estructura](../acero/perfiles.md#proyectar-la-estructura) |  MC  | [  ] |
| 2.4 | [Modelar los atributos correctos de NAME/CLASS en la estructura](../acero/perfiles.md#atributos-a-modelar) |  EJE  | [  ] |
| 2.5 | [Selección y modelar uniones de acuerdo con componentes siguiendo atributos](../acero/conexiones.md#componentes-de-acero) |  EJE  | [ ] |
| 2.6 | [Modelar las chapas de nudo o cualquier chapa individual con espesores comerciales](../acero/perfiles.md#chapas-de-nudo) | EJE | [  ] | [  ] |
| 2.7 | [Modelado de placa base](../hormigon/elementos.md#diseño-de-anclajes)  |  EJE  | [  ] |
| 2.8 | [Asignación de materiales correctos a perfiles, chapas, bulones y anclajes](../hormigon/elementos.md#diseño-de-anclajes)  |  EJE  | [  ] |

### Paso 3 - Validando lo modelado

| Paso | Descripción |  Responsable | Check |
|------|-------------|-------|-------|
| 3.1 | [¿La estructura tiene los NSA correctos?](../faq/faq.md#verificar-los-nsa-de-la-estructura) |  EJE / LEP  | [ ] |
| 3.2 | [¿La estructura tiene los perfiles orientados correctamente?](../acero/perfiles.md#proyectar-la-estructura) | EJE / LEP | [ ] |
| 3.3 | [¿La estructura no tiene elementos torcidos por error de modelado?](../reportes/ejemplos_cuadros.md#verificar-coordenadas-de-modelado)  |  EJE | [ ] |
| 3.4 | [¿La estructura tiene a nivel partes todos los atributos correctamente modelados?](../acero/perfiles.md#atributos-a-modelar)  | EJE | [ ] |
| 3.5 | [¿La estructura tiene los componentes con sus partes correctamente modelados?](../acero/perfiles.md#atributos-a-modelar) | EJE | [ ] |
| 3.6 | [¿Hay atributos adicionales a la estructura que deben indicarse?](../faq/faq.md#que-atributos-adicionales-a-la-estructura-deben-indicarse)  |  EJE  | [ ] |
| 3.7 | [¿Los bulones de uniones con calidad correcta, con separaciones mínimas y máximas y posibilidad de torquearse?](../acero/perfiles.md#distancias-entre-bulones-distancias-a-borde-y-distancias-a-perfiles)  |  EJE  | [ ] |
| 3.8 | [¿Las chapas que componen la estructura está de acuerdo a espesores comerciales?](../acero/perfiles.md#chapas-de-nudo)  |  EJE  | [ ] |
| 3.9 | [¿Está modelado correctamente las placas que representan el grating?](../ejemplos/ejemplos_filtros.md)  |  EJE  | [ ] |


[← Volver al inicio](index.md)