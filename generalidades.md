# Guía de Uso

[← Volver al inicio](index.md)

## Introducción

Descripción general de qué hace el programa y sus principales funcionalidades.

## Conceptos Básicos

### Flujo de trabajo típico

1. **Preparar datos** - Formato y estructura necesaria
2. **Ejecutar análisis** - Comandos y opciones
3. **Revisar resultados** - Interpretar outputs
4. **Exportar** - Guardar en formato deseado

## Comandos Principales

### Comando básico

```bash
tu-programa --input archivo.csv
```

**Parámetros:**
- `--input` o `-i`: Archivo de entrada (requerido)
- `--output` o `-o`: Archivo de salida (opcional)
- `--verbose` o `-v`: Modo detallado

### Opciones de configuración

```bash
tu-programa --input datos.csv --config config.yml --output resultados/
```

### Procesamiento avanzado

```bash
tu-programa --input datos.csv \
  --parametro1 valor1 \
  --parametro2 valor2 \
  --formato json
```

## Formato de Datos

### Estructura esperada

```csv
columna1,columna2,columna3
valor1,valor2,valor3
```

### Datos requeridos

- Campo 1: Descripción y tipo
- Campo 2: Descripción y tipo
- Campo 3: Descripción y tipo

## Interpretación de Resultados

Explicación de los outputs generados y cómo interpretarlos.

### Ejemplo de salida

```
Resultado 1: valor
Resultado 2: valor
Estadística: valor
```

## Mejores Prácticas

- ✅ Validar datos antes de procesar
- ✅ Usar archivos de configuración para análisis complejos
- ✅ Revisar logs en caso de errores
- ❌ No procesar archivos corruptos sin validar

## Próximos pasos

- Consulta las [Preguntas Frecuentes](faq.md)
- Revisa [Ejemplos prácticos](ejemplos.md)
