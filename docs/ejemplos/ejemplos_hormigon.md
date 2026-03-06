# Ejemplos Prácticos

[← Volver al inicio](index.md)

## Ejemplo 1: Uso Básico

### Caso de uso
Procesar un archivo CSV simple.

### Datos de entrada
```csv
id,nombre,valor
1,Item A,100
2,Item B,200
3,Item C,150
```

### Comando
```bash
tu-programa --input datos.csv --output resultados.csv
```

### Resultado esperado
```csv
id,nombre,valor,analisis
1,Item A,100,resultado_1
2,Item B,200,resultado_2
3,Item C,150,resultado_3
```

---

## Ejemplo 2: Configuración Personalizada

### Caso de uso
Análisis con parámetros específicos.

### Archivo de configuración
```yaml
# config.yml
analisis:
  tipo: avanzado
  umbral: 150
  incluir_graficos: true
```

### Comando
```bash
tu-programa --input datos.csv --config config.yml
```

### Resultado
- Archivo CSV con resultados
- Gráficos en carpeta `graficos/`
- Reporte resumen en `reporte.txt`

---

## Ejemplo 3: Procesamiento por Lotes

### Caso de uso
Procesar múltiples archivos en una carpeta.

### Estructura de archivos
```
datos/
├── dataset1.csv
├── dataset2.csv
└── dataset3.csv
```

### Comando
```bash
tu-programa --input-dir datos/ --output-dir resultados/
```

### Resultado
```
resultados/
├── dataset1_procesado.csv
├── dataset2_procesado.csv
└── dataset3_procesado.csv
```

---

## Ejemplo 4: Filtrado y Transformación

### Caso de uso
Aplicar filtros antes del análisis.

### Comando
```bash
tu-programa --input datos.csv \
  --filtro "valor > 100" \
  --columnas id,nombre,valor \
  --ordenar valor DESC
```

### Resultado
Solo registros con valor > 100, ordenados descendentemente.

---

## Ejemplo 5: Integración con Pipeline

### Caso de uso
Usar el programa en un pipeline de datos.

### Script de ejemplo
```bash
#!/bin/bash

# 1. Descargar datos
wget https://ejemplo.com/datos.csv

# 2. Procesar
tu-programa --input datos.csv --output procesado.csv

# 3. Cargar a base de datos
python cargar_db.py procesado.csv
```

---

## Ejemplo 6: Uso como Librería Python

### Caso de uso
Integrar en código Python propio.

```python
from tu_programa import Analizador

# Crear instancia
analizador = Analizador(config='config.yml')

# Cargar datos
datos = analizador.cargar('datos.csv')

# Procesar
resultados = analizador.procesar(datos)

# Exportar
analizador.exportar(resultados, 'salida.csv')
```

---

## Más Ejemplos

Para casos de uso más complejos, consulta:
- [Guía de Uso completa](guia-uso.md)
- [Preguntas Frecuentes](faq.md)
- [Repositorio de ejemplos](https://github.com/tu-usuario/tu-programa-ejemplos)
