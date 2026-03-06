---
title: ✅Checklist de modelado
layout: default_with_reading_time.html
parent: Acero
nav_order: 3
toc: true
---

# Instalación

[← Volver al inicio](index.md)

## Requisitos del Sistema

- Python 3.8 o superior
- pip (gestor de paquetes)
- 4GB RAM mínimo (8GB recomendado)
- Espacio en disco: 500MB

## Instalación Rápida

### Opción 1: Usando pip

```bash
pip install tu-programa
```

### Opción 2: Desde el código fuente

```bash
git clone https://github.com/tu-usuario/tu-programa.git
cd tu-programa
pip install -e .
```

## Verificar Instalación

```bash
tu-programa --version
```

Deberías ver la versión instalada.

## Configuración Inicial

### 1. Crear archivo de configuración

```bash
tu-programa --init
```

Esto genera un archivo `config.yml` con valores por defecto.

### 2. Ajustar configuración

Edita `config.yml` según tus necesidades:

```yaml
general:
  ruta_datos: ./datos
  ruta_salida: ./resultados
  
opciones:
  verbose: true
  formato_salida: csv
```

## Dependencias Opcionales

Para funcionalidades adicionales:

```bash
# Para procesamiento de imágenes
pip install tu-programa[imagenes]

# Para análisis avanzado
pip install tu-programa[analisis]

# Todas las opcionales
pip install tu-programa[completo]
```

## Actualización

```bash
pip install --upgrade tu-programa
```

## Desinstalación

```bash
pip uninstall tu-programa
```

## Solución de Problemas en Instalación

### Error de permisos

```bash
pip install --user tu-programa
```

### Conflictos de versiones

```bash
# Crear entorno virtual
python -m venv venv
source venv/bin/activate  # Linux/Mac
# o
venv\Scripts\activate  # Windows

pip install tu-programa
```

## Próximos Pasos

- Lee la [Guía de Uso](guia-uso.md)
- Consulta las [Preguntas Frecuentes](faq.md)
