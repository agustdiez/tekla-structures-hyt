---
title: Elementos de Hormigón
layout: default_with_reading_time
parent: Hormigón
nav_order: 1
has_toc: true
---

# Elementos - Hormigón
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

Tekla permite modelar estructuras de hormigon armado, este capitulo se centra en la creación de objetos de H°. Hay 4 principales opciones en el modelado. 

![RIBBON-H°A°](../img/hormigon/RIBBON-H°.png)

### Footing

### Beam

### Column / Columna

### Item

### Unidad de colada

---

## Antes de modelar

- Referemcoas de connect
- Referencias externas de cliente
- Referencias internas del proyecto de otras disciplinas

EL Lep deberá indicar a quien modele lo que debe tomar como información valida y tener en cuenta

Para referencias de Connect, ver [Connect - Ejecutor](../connect/connect-ejecutor.md)

---

## Atributos a modelar

Va a depender de IB/ID, definiciones de proyecto, pero en caracter general:

---

## Diseño de armaduras

Ver [Armaduras](./armaduras.md) para detalle de cómo modelar, tipo de armaduras, y reportes asociados.

---

## Componentes

---

## Miscelaneos

### Diseño de anclajes

Referir a los componentes que lo modelan y derivar a la tabla de conexiones


### Antimaterial

### Tipo de fundaciones

Se presenta listado de tipo de fundaciones.

Lo complejo suele ser el armado de las mismas. para esas definciiones ver [Armaduras](./armaduras.md)






















































## 2. Elementos Estructurales de Hormigón

### 2.1 Columnas (Concrete Column)

**Descripción**: Elementos verticales que transmiten cargas axiales y momentos desde niveles superiores hacia la fundación.

**Herramienta**: Ribbon > Concrete > Column

**Geometría**:
- Punto de inserción inferior
- Punto superior o altura
- Orientación del perfil

**Atributos Críticos**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Profile** | Sección transversal | `REC400*400` |
| **Material** | Calidad de hormigón | `H30`, `H21` |
| **Class** | Clase estructural (para filtros) | `7` (columnas) |
| **Name** | Identificador | `C-1`, `COL-TIPO-A` |
| **Position** | Sistema de posicionamiento | Middle / Depth: middle |
| **Start/End Offset** | Ajustes en extremos | `0` / `-50` (si empotra en losa) |
| **Pour Object** | Unidad de colada | Auto / Manual |
| **Cast Unit Type** | Tipo de unidad de colada | `CAST_IN_PLACE` |

**UDAs Recomendados**:
- `ELEMENT_MARK`: Marca de planilla
- `DRAWING_STATUS`: Estado de documentación
- `POUR_PHASE`: Fase de hormigonado

**Consideraciones**:
- Verificar empotramientos en fundaciones (offset negativo)
- Coordinar cambios de sección con detalles de empalme
- Definir Position correctamente para interferencias

---

### 2.2 Vigas (Concrete Beam)

**Descripción**: Elementos horizontales o inclinados que transmiten cargas por flexión.

**Herramienta**: Ribbon > Concrete > Beam

**Geometría**:
- Punto inicial
- Punto final
- Orientación (rotación sobre eje longitudinal)

**Atributos Críticos**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Profile** | Sección transversal | `REC300*600` |
| **Material** | Calidad de hormigón | `H30` |
| **Class** | Clase estructural | `8` (vigas) |
| **Name** | Identificador | `V-1`, `BEAM-AXIS-A` |
| **Position** | Plano de trabajo y profundidad | Plane: Middle, Depth: Middle |
| **Rotation** | Giro sobre eje longitudinal | `0°`, `90°` |
| **Start/End Offset** | Ajustes en extremos | `-150` (si empotra en columna) |
| **Pour Object** | Unidad de colada | Auto (se une a losas) |
| **Camber** | Contraflecha | `L/500` o valor absoluto |

**UDAs Recomendados**:
- `ELEMENT_MARK`
- `CONCRETE_VOLUME`: Para cubicaciones
- `FORMWORK_AREA`: Encofrados

**Consideraciones**:
- Offset negativos para empotramientos en nudos
- Rotation correcta para vigas de borde o invertidas
- Camber según especificaciones estructurales

---

### 2.3 Losas (Concrete Slab / Slab Panel)

**Descripción**: Elementos superficiales horizontales o inclinados que trabajan en dos direcciones.

**Herramienta**: Ribbon > Concrete > Slab

**Geometría**:
- Polígono cerrado (picando vértices o seleccionando contorno)
- Espesor
- Elevación

**Atributos Críticos**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Thickness** | Espesor de losa | `150`, `200` |
| **Material** | Calidad de hormigón | `H21`, `H30` |
| **Class** | Clase estructural | `9` (losas) |
| **Name** | Identificador | `SLAB-L1`, `DECK-ROOF` |
| **Position** | Referencia vertical | Depth: Middle / Below |
| **Elevation** | Cota inferior o superior | `3000` (cota sup) |
| **Pour Object** | Unidad de colada | Auto |
| **Edge Chamfers** | Chaflanes en bordes | Para bordes expuestos |

**UDAs Recomendados**:
- `SLAB_TYPE`: Tipo (maciza, nervada, etc.)
- `LOAD_CAPACITY`: Sobrecarga de diseño
- `FINISH`: Terminación superficial

**Consideraciones**:
- Separar losas por juntas de dilatación
- Usar contour plates para geometrías complejas
- Definir edge chamfers en bordes vistos

---

### 2.4 Muros (Concrete Panel / Wall)

**Descripción**: Elementos verticales superficiales que resisten cargas axiales, cortantes y momentos en su plano.

**Herramienta**: Ribbon > Concrete > Wall / Panel

**Geometría**:
- Polígono vertical
- Espesor
- Altura

**Atributos Críticos**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Thickness** | Espesor del muro | `200`, `250` |
| **Material** | Calidad de hormigón | `H30` |
| **Class** | Clase estructural | `14` (muros) |
| **Name** | Identificador | `WALL-A-1`, `SHEAR-WALL-X1` |
| **Position** | Referencia horizontal | Plane: Middle / Left / Right |
| **Height** | Altura del panel | `3000` |
| **Elevation** | Cota base | `0`, `3000` |
| **Pour Object** | Unidad de colada | Manual (separar por etapas) |

**UDAs Recomendados**:
- `WALL_FUNCTION`: Estructural / Arquitectónico
- `FIRE_RATING`: Resistencia al fuego
- `ACOUSTIC_RATING`: Aislación acústica

**Consideraciones**:
- Usar Position correctamente para alineaciones
- Separar por juntas constructivas
- Coordinar con aberturas (Component o Cut)

---

### 2.5 Fundaciones (Footings / Pile Caps / Mat Foundation)

**Descripción**: Elementos en contacto con el suelo que distribuyen cargas de la superestructura.

#### 2.5.1 Zapatas Aisladas (Pad Footing)

**Herramienta**: Ribbon > Concrete > Footing > Pad Footing

**Atributos Críticos**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Profile** | Dimensiones en planta | `2000*2000` |
| **Material** | Calidad de hormigón | `H21` |
| **Class** | Clase estructural | `11` (fundaciones) |
| **Name** | Identificador | `FTG-1`, `FOOTING-C1` |
| **Thickness** | Alto de zapata | `600` |
| **Position** | Centrado o excéntrico | Middle-Middle |

#### 2.5.2 Zapatas Corridas (Strip Footing)

**Herramienta**: Ribbon > Concrete > Footing > Strip Footing

**Atributos Adicionales**:
- **Width**: Ancho de zapata corrida
- **Length**: Se define por geometría

#### 2.5.3 Cabezales de Pilotes (Pile Cap)

**Atributos Específicos**:
- **Pile Group**: Conexión con pilotes
- **Pile Spacing**: Distancia entre pilotes

**UDAs Recomendados para Fundaciones**:
- `SOIL_TYPE`: Tipo de suelo
- `ALLOWABLE_BEARING`: Capacidad portante
- `DEPTH_FROM_GL`: Profundidad desde nivel natural

---

### 2.6 Escaleras (Concrete Stairs)

**Descripción**: Elementos de circulación vertical compuestos por peldaños, descansos y vigas zancas.

**Herramienta**: Components > Cast In Place > Stairs

**Componentes**:
- **Flight**: Tramo de escalera
- **Landing**: Descanso
- **Stringer**: Viga zanca/lateral

**Atributos Críticos**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Material** | Calidad de hormigón | `H21` |
| **Tread** | Huella | `280` |
| **Riser** | Contrahuella | `170` |
| **Width** | Ancho de escalera | `1200` |
| **Thickness** | Espesor de losa de escalera | `150` |
| **Stringer Type** | Tipo de zanca | Lateral / Central / Ninguna |

**UDAs Recomendados**:
- `STAIR_ID`: Identificador de escalera
- `FIRE_ESCAPE`: Si es escape de incendios
- `HANDRAIL_TYPE`: Tipo de baranda

---

### 2.7 Elementos Prefabricados (Precast)

**Descripción**: Elementos fabricados fuera del sitio y montados en obra.

**Tipos Comunes**:
- Vigas pretensadas
- Paneles de muro
- Losas alveolares
- Columnas prefabricadas

**Atributo Diferenciador**:

| Atributo | Valor |
|----------|-------|
| **Cast Unit Type** | `PRECAST` |

**Atributos Adicionales**:

| Atributo | Descripción | Valor Ejemplo |
|----------|-------------|---------------|
| **Precast ID** | Identificador de elemento | `PC-BEAM-01` |
| **Production Site** | Planta de fabricación | `PLANT-A` |
| **Erection Sequence** | Secuencia de montaje | `1`, `2`, `3` |
| **Lifting Points** | Puntos de izaje | Coordenadas |

**UDAs Recomendados**:
- `PRECAST_MARK`: Marca de prefabricado
- `WEIGHT`: Peso para logística
- `TRANSPORT_LENGTH`: Largo máximo transporte
- `ERECTION_ZONE`: Zona de montaje

---

## 3. Unidades de Colada (Pour Objects / Cast Units)

### 3.1 ¿Qué son las Unidades de Colada?

Las **unidades de colada** (Cast Units o Pour Objects) son agrupaciones lógicas de elementos de hormigón que se colarán en una misma operación constructiva. Representan el hormigón que se vierte en un evento de colada continuo, respetando juntas constructivas, fases de obra y limitaciones prácticas.

### 3.2 ¿Para qué sirven?

1. **Planificación Constructiva**: Definir secuencia y fases de hormigonado
2. **Cubicaciones**: Calcular volúmenes de hormigón por colada
3. **Encofrados**: Extraer áreas de encofrado por etapa
4. **Logística**: Estimar camiones mixer necesarios
5. **Juntas Constructivas**: Representar separaciones físicas entre coladas
6. **Reportes**: Generar listados por unidad de colada
7. **Color Coding**: Visualizar fases en modelo 3D

### 3.3 Tipos de Unidades de Colada

#### Cast-in-Place (Colado in situ)
```
Cast Unit Type: CAST_IN_PLACE
```

Elementos colados en obra con encofrado tradicional.

**Ejemplos**:
- Losas de entrepisos
- Vigas y columnas in situ
- Muros de contención
- Fundaciones

#### Precast (Prefabricado)
```
Cast Unit Type: PRECAST
```

Elementos fabricados en planta y transportados.

**Ejemplos**:
- Vigas pretensadas
- Paneles arquitectónicos
- Losas alveolares

#### Site Precast (Prefabricado en Sitio)
```
Cast Unit Type: SITE_PRECAST
```

Elementos prefabricados en zona de acopio del proyecto.

---

### 3.4 Creación de Unidades de Colada

#### Método 1: Automático

Tekla crea unidades automáticamente cuando elementos se tocan y tienen propiedades compatibles.

**Condiciones para unión automática**:
- Mismo material
- Mismo `Cast Unit Type`
- `Pour Object` = `Yes` o `Auto`
- Geometrías en contacto (tolerance < 20mm default)

**Configuración**:
```
Ribbon > Concrete > Cast Units > Pour Management
```

#### Método 2: Manual

Seleccionar elementos y asignar a unidad de colada específica.

**Pasos**:
1. Seleccionar partes a agrupar
2. `Ribbon > Concrete > Cast Units > Create Cast Unit`
3. Asignar propiedades

#### Método 3: Por Componente

Algunos componentes crean unidades de colada automáticamente.

**Ejemplo**: Stair Component crea una unidad para todo el tramo.

---

### 3.5 Propiedades de Unidades de Colada

**Acceso**: Doble click en unidad de colada o desde Object Browser

| Propiedad | Descripción | Uso |
|-----------|-------------|-----|
| **Cast Unit ID** | Identificador único | `CU-001`, `POUR-1A` |
| **Cast Unit Prefix** | Prefijo para numeración | `CU-`, `POUR-` |
| **Start Number** | Número inicial | `1`, `100` |
| **Phase** | Fase de obra | `FOUNDATIONS`, `LEVEL-1` |
| **Pour Date** | Fecha programada de colada | `2024-03-15` |
| **Volume** | Volumen calculado (auto) | `12.5 m³` |
| **Pour Sequence** | Secuencia de colada | `1`, `2`, `3` |

**UDAs Recomendados**:
```
CONCRETE_SUPPLIER: Proveedor de hormigón
CONCRETE_MIX: Dosificación específica
CURING_METHOD: Método de curado
FORMWORK_TYPE: Tipo de encofrado
POUR_RATE: Velocidad de colada (m³/hr)
STRENGTH_28D: Resistencia a 28 días
TEST_CYLINDER_ID: Identificador de probetas
```

---

### 3.6 Separación de Unidades de Colada

#### Por Juntas Constructivas

Usar **Pour Break** para separar lógicamente elementos que se tocan:

**Herramienta**: `Ribbon > Concrete > Cast Units > Pour Break`

**Método**:
1. Seleccionar elementos a separar
2. Aplicar Pour Break
3. Se crean dos unidades independientes

**Casos de uso**:
- Separar columna de losa superior
- Dividir losa larga por juntas de contracción
- Separar muros por fases de colada

#### Por Atributos

Cambiar propiedades para evitar unión automática:
```
Parte A: Material = H30, Cast Unit Type = CAST_IN_PLACE
Parte B: Material = H21, Cast Unit Type = CAST_IN_PLACE
→ No se unen automáticamente
```

---

### 3.7 Workflow de Modelado con Unidades de Colada

#### Fase 1: Modelado Estructural

1. Modelar elementos sin preocuparse por unidades
2. Asignar propiedades correctas (material, clase, etc.)
3. Verificar que `Pour Object = Auto`

#### Fase 2: Definición de Unidades

1. Ejecutar `Create Cast Units` (automático o manual)
2. Revisar agrupaciones en Object Browser
3. Aplicar Pour Breaks donde sea necesario

#### Fase 3: Propiedades y Fases

1. Asignar IDs y prefijos
2. Definir fases de obra (`Phase`)
3. Agregar fechas de colada (`Pour Date`)
4. Completar UDAs de producción

#### Fase 4: Visualización

1. Usar `Object Representation` para color por unidad de colada
2. Activar filtros por fase
3. Generar vistas por secuencia de colada

---

### 3.8 Reportes de Unidades de Colada

#### Reporte de Volúmenes

**Template**: `Cast_Unit_Volume_Report.rpt`

**Campos clave**:
- Cast Unit ID
- Phase
- Volume (m³)
- Pour Date
- Number of Parts

#### Reporte de Encofrados

**Template**: `Formwork_Area_Report.rpt`

**Campos clave**:
- Cast Unit ID
- Formwork Area (m²)
- Formwork Type
- Surface Finish

#### Cubicación Detallada
```sql
SELECT 
    CU.CAST_UNIT_ID,
    CU.PHASE,
    SUM(P.VOLUME) as TOTAL_VOLUME,
    COUNT(P.ID) as PART_COUNT,
    CU.POUR_DATE
FROM CAST_UNIT CU
JOIN PART P ON P.CAST_UNIT_ID = CU.ID
GROUP BY CU.CAST_UNIT_ID, CU.PHASE, CU.POUR_DATE
ORDER BY CU.POUR_DATE
```

---

### 3.9 Ejemplos Prácticos

#### Ejemplo 1: Fundaciones
```
Unidad: FOUND-01
Contiene:
  - Zapata Z-1 (2.5 m³)
  - Zapata Z-2 (2.5 m³)
  - Viga de riostra VR-1 (1.2 m³)
Total: 6.2 m³
Fase: FOUNDATIONS
Fecha: 2024-03-10
```

**Configuración**:
- Todas las partes con `Cast Unit Type = CAST_IN_PLACE`
- Geometrías en contacto
- Mismo material: H21

#### Ejemplo 2: Columnas de Nivel 1
```
Unidad: COL-L1-01
Contiene:
  - Columnas C1 a C6 del nivel 1
Total: 14.8 m³
Fase: LEVEL-1-COLUMNS
Fecha: 2024-03-15
```

**Configuración**:
- Columnas NO unidas entre sí (no se tocan)
- Usar selección manual y `Create Cast Unit`
- Pour Break con losa superior

#### Ejemplo 3: Losa de Entrepiso
```
Unidad: SLAB-L2-A
Contiene:
  - Losa de 150mm (45 m³)
  - Vigas perimetrales (8 m³)
Total: 53 m³
Fase: LEVEL-2-DECK
Fecha: 2024-03-20
```

**Configuración**:
- Losa y vigas se unen automáticamente (en contacto)
- Pour Break con columnas inferiores
- Verificar espesor de losa para volumen correcto

---

### 3.10 Buenas Prácticas

#### ✅ Hacer

1. **Definir fases temprano**: Establecer convención de nombres
2. **Usar prefijos consistentes**: `CU-`, `POUR-`, `CAST-`
3. **Verificar volúmenes**: Comparar con cálculos manuales
4. **Documentar juntas**: Usar Pour Breaks explícitos
5. **Color por fase**: Visualizar secuencia constructiva
6. **Incluir UDAs**: Agregar información de producción
7. **Sincronizar con cronograma**: Alinear fechas con planificación

#### ❌ Evitar

1. No dejar unidades automáticas sin revisar
2. No mezclar Cast-in-Place con Precast en misma unidad
3. No ignorar tolerancias de unión (ajustar si es necesario)
4. No usar IDs genéricos (dificultan trazabilidad)
5. No omitir Pour Breaks en juntas críticas
6. No olvidar actualizar después de cambios geométricos

---

### 3.11 Configuración Avanzada

#### Tolerancia de Unión

**Ruta**: `File > Settings > Options > Pour Management`
```
Default tolerance: 20 mm
```

Aumentar si geometrías con gaps pequeños deben unirse.

#### Numeración Automática

**Ruta**: `Setup > Numbering > Cast Unit Numbering`

Configurar prefijos y rangos por fase.

#### Templates de Propiedades

Guardar configuraciones de unidades de colada como templates para reutilizar.

---

## 4. Checklist de Modelado en Hormigón

### Antes de Modelar

- [ ] Definir grid y niveles de referencia
- [ ] Establecer convención de nombres y clases
- [ ] Configurar materiales (H21, H30, etc.)
- [ ] Definir fases de colada y secuencia constructiva

### Durante el Modelado

- [ ] Verificar Profile y Material en cada elemento
- [ ] Asignar Class correctamente (7=columna, 8=viga, etc.)
- [ ] Definir Position para alineaciones correctas
- [ ] Aplicar offsets donde sea necesario
- [ ] Verificar empotramientos y conexiones
- [ ] Completar UDAs requeridos

### Unidades de Colada

- [ ] Ejecutar creación de unidades (auto o manual)
- [ ] Verificar agrupaciones lógicas
- [ ] Aplicar Pour Breaks en juntas
- [ ] Asignar IDs y fases
- [ ] Agregar fechas de colada
- [ ] Validar volúmenes calculados

### Verificación Final

- [ ] Clash detection (hormigón vs MEP)
- [ ] Verificar coberturas de armado
- [ ] Revisar espesores y dimensiones
- [ ] Validar niveles y cotas
- [ ] Generar reportes de cubicación
- [ ] Exportar modelo a planificación (4D)

---

## 5. Troubleshooting Común

### Problema: Unidades no se unen automáticamente

**Causas**:
- Materiales diferentes
- Gap > tolerancia (20mm)
- `Pour Object = No` en alguna parte
- `Cast Unit Type` diferentes

**Solución**:
- Verificar propiedades
- Ajustar tolerancia
- Forzar unión manual

### Problema: Volúmenes incorrectos

**Causas**:
- Overlaps entre elementos
- Profile mal definido
- Unidades incorrectas (mm vs m)

**Solución**:
- Clash detection
- Revisar geometrías
- Verificar unidades del modelo

### Problema: Numeración duplicada

**Causas**:
- Configuración de numeración errónea
- Modelo no renumerado

**Solución**:
- `Ribbon > Numbering > Renumber All`
- Verificar `Numbering Setup`

---

## 6. Recursos Adicionales

### Templates Recomendados

- `Concrete_Standard.ini`: Configuración base
- `Cast_Unit_Properties.uel`: Template de propiedades
- `Concrete_Classes.std`: Clases estándar

### Componentes Útiles

- `(14) Concrete console`: Ménsula hormigón
- `(81) Slab bay`: Paño de losa entre ejes
- `(146) Stairs`: Escaleras de hormigón
- `(71) Wall opening`: Aberturas en muros

### Plugins Externos

- **Concrete Quantity Takeoff**: Cubicaciones avanzadas
- **Rebar Visibility**: Control de visualización de armaduras
- **Pour Management Pro**: Gestión avanzada de coladas

---

## 7. Estándares de Nomenclatura

### Convención de Names
```
Columnas: C-<GRID>-<NIVEL>  → C-A1-L1
Vigas:    V-<EJE>-<NIVEL>   → V-AB-L2
Losas:    S-<NIVEL>         → S-L1, S-ROOF
Muros:    W-<ID>-<NIVEL>    → W-X1-L1
Zapatas:  F-<COLUMNA>       → F-C1, F-A1
```

### Convención de Classes
```
7:  Columnas
8:  Vigas
9:  Losas
10: Muros portantes
11: Fundaciones
12: Muros de contención
13: Escaleras
14: Muros (general)
```

### Convención de Cast Unit IDs
```
CU-<FASE>-<SECUENCIA>  → CU-FOUND-01, CU-L1-COL-01
```

---

## 8. Integración con Otras Disciplinas

### Arquitectura

- Coordinar aberturas en losas y muros
- Validar niveles de piso terminado (NPT)
- Verificar espesores para instalaciones

### Estructuras (Análisis)

- Exportar modelo a software de análisis (SAP2000, ETABS)
- Importar resultados para dimensionamiento de armaduras
- Validar secciones y materiales

### MEP

- Reservar pasos en losas (sleeves)
- Coordinar nichos en muros
- Validar alturas libres

### Construcción

- Exportar secuencia de colada a cronograma 4D
- Generar listados de encofrados
- Proveer volúmenes para logística

---


[← Volver al inicio](index.md)