---
title: Gestión de archivos
layout: default_with_reading_time
parent: Avanzado
nav_order: 1
has_toc: true
---

# Gestión de archivos
{: .no_toc }

## Tabla de Contenidos
{: .no_toc .text-delta }

1. TOC
{:toc}

## Objeto

Este apartado busca automatizar los flujos de generación de modelos y su importación a modelos federados, así como cualquier otro flujo que haga que los ejecutores puedan auxiliarse a lo largo del proyecto. A modo de ejemplo, estarán descriptos los siguientes procesos:

- Corrida de BIM Publisher y ubicación de archivos en modelo federado
- Copiado de archivos .nwd de maqueta


Como regla práctica, si se tienen más de 20 modelos y reuniones semanales de maqueta, definir estos scripts resulta sumamente necesario para no tener errores y no perder demasiado tiempo copiando modelos.

A lo largo de los ejemplos, se definirán ciertos conceptos necesarios para adaptar las rutinas. **Es obligatorio que quien maneje los scripts tenga conocimientos mínimos de programación ya que son rutinas que copian, pegan y borran archivos. Un error no controlado puede significar que se pierdan archivos que no puedan recuperarse.**

----

## Requisitos previos

El encargado de realizar estas tareas deberá contar con:

- Python ([Descargar](https://www.python.org/downloads/release/python-31213/))
- Visual Studio Code ([Descargar](https://code.visualstudio.com/download))
- Librerías necesarias

### ¿Cómo instalar librerías?

Python se maneja con librerías. Para instalar librerías se usa `pip`. Desde Terminal ejecutar

```python
# Ejemplo instalando pandas
pip install pandas
```

Si se tienen varias versiones de python especificar la version de python antes donde queramos instalar el paquete.

```python
python3.9 -m pip install paquete
python3.10 -m pip install paquete
```

### Extensiones

Hay dos extensiones posibles:

1. Archivos **.py**: útiles si se tiene definido una sola persona para el rol. Son rutinas que se corren y permitirán dejarlas corriendo siempre en un mismo horario. No es alcance de este manual explicar cómo hacer esto, ya que se entiende como algo opcional.
2. Archivos **.ipynb**: archivos del estilo *notebook*, que mezclan bloques de código con texto. Esta debería ser la opción inicial para introducirse, y permitir tener todas las rutinas en un mismo archivo y elegir voluntariamente cuál correr.



----


## Mover archivos a modelo federado

Para hacer esto, cumplir en primera instancia lo siguiente:

- Ubicar en una carpeta única todos los modelos del proyecto que saca el BIM Publisher
- Tener ya una estructura de modelo federado por áreas definida
- Tener una codificación de .ifc definida de acuerdo a los modelos federados.

Una vez definido esto en cada proyecto, construir el script en base a lo siguiente:

### Armado de script

La rutina permite:

1. Partir de una carpeta con archivos de múltiples formatos, **con nombre de modelo federado**
2. Identificar a qué áreas pertenecen los modelos
3. Copiar los modelos a las carpetas correspondientes del modelo federado.
4. Armar un backup de todos los archivos copiados a nivel disciplina para tener trazabilidad de los cambios que se hagan en la maqueta, teniendo la fecha dentro del nombre de la carpeta.

#### Librerías

`shutil`: para mover archivos
`re`: para expresiones regulares
`pathlib`: para definicion de rutas
`datetime`: para darle nombre a la carpeta de backup

```python
import shutil
import re
from pathlib import Path
from datetime import datetime
```
#### Configuración

```python
# ============================================================
# CONFIGURACIÓN
# ============================================================

# Rutas principales (ajustar según PC/usuario)
carpeta_fuente = Path(r"C:\Users\<USUARIO>\Hytech Ingeniería S.A\Agustin Diez - 348 - AGD - TEKLA\MODELOS\<PROYECTO>\00.EXPORT")
carpeta_destino_raiz = Path(r"T:\Trabajo Arg\<PROYECTO>\12-GENERAL\10-COORDINACION 3D\02-3D MODEL")

# Subruta fija después del AREA_xx
# Este script no va a distinguir de modulos o interconexion. Se puede hacer a través de un diccionario
subruta_post_area = Path(r"01- INTERCONEXION\03 - CIVIL")

# Extensiones. Elegir que archivos se van a mover. Por default, tomar .ifc únicamente
EXTS = (".ifc")  # Tupla para comparación

# Regex para extraer área del nombre del archivo. Este dato lo guardaremos para definir su carpeta de destino.
# Ejemplo: PAM25026-A02-CIV-3D-3007.ifc -> captura "02"
pat_area = re.compile(r"A(\d{2})", re.IGNORECASE)

```

#### Definición de variables

```python
# ============================================================
# PREPARACIÓN
# ============================================================

# Crear carpeta de backup con fecha YYMMDD
fecha_str = datetime.now().strftime("%y%m%d")
carpeta_backup = carpeta_fuente / f"{fecha_str}_export"
carpeta_backup.mkdir(exist_ok=True)

print(f"Carpeta backup: {carpeta_backup}\n")

# Contadores
movidos, pisados, omitidos, backed_up = 0, 0, 0, 0

```

#### Mover archivos

```python
# ============================================================
# Arranco a procesar cada archivo
# ============================================================

for file in carpeta_fuente.glob("*.*"):
    # Me quedo con las extensiones de la tupla definida en el paso anterior
    if file.suffix.lower() not in EXTS or not file.is_file():
        continue

    # Extraer número de área del nombre
    m = pat_area.search(file.stem)
    if not m:
        print(f"⚠️  [SKIP] Sin área detectable: {file.name}")
        omitidos += 1
        continue

    # Formatear área (ej: 2 -> AREA_02). Armo el string de área. IMPORTANTE! Esto puede variar proyecto a proyecto, y su definición corre por Sistemas de ingeniería.
    area_num = int(m.group(1))
    area_folder = f"AREA_{area_num:02d}"

    # Construir ruta destino completa
    destino_area = carpeta_destino_raiz / area_folder / subruta_post_area

    # Validar existencia (no crear carpetas nuevas). Por seguridad, si no existe el destino no se crea, ya que se presupone un error del usuario
    if not destino_area.exists():
        print(f"⚠️  [SKIP] Destino no existe para {file.name}")
        print(f"    Esperado: {destino_area}")
        omitidos += 1
        continue

    destino_final = destino_area / file.name

    # ============================================================
    # Muevo el archivo
    # ============================================================
    try:
        # Control de sobreescritura
        if destino_final.exists():
            destino_final.unlink()  # Eliminar versión anterior. GUardo el concepto de pisar el archivo
            pisados += 1

        # Mover archivo
        shutil.move(str(file), str(destino_final))
        movidos += 1
        print(f"✅ [OK] {file.name} -> AREA_{area_num:02d}")

        # Respaldar copia en backup
        shutil.copy2(str(destino_final), str(carpeta_backup / file.name))
        backed_up += 1

    except Exception as e:
        print(f"❌ [ERROR] {file.name}: {e}")
        omitidos += 1
```

#### Limpieza de la carpeta origen, armado de backup y resumen de todo

```python
# ============================================================
# Limpieza de archivos
# ============================================================

print("\n--- Limpieza de carpeta fuente ---")

for ext in EXTS:
    for leftover in carpeta_fuente.glob(f"*{ext}"):
        if not leftover.is_file():
            continue
        try:
            # Respaldar antes de eliminar
            shutil.copy2(str(leftover), str(carpeta_backup / leftover.name))
            leftover.unlink()
            print(f"🧹 [CLEAN] Respaldado y eliminado: {leftover.name}")
        except Exception as e:
            print(f"⚠️  [WARN] No se pudo limpiar {leftover.name}: {e}")

# ============================================================
# Resumen de todo
# ============================================================

print("\n" + "="*50)
print("📊 RESUMEN DE OPERACIONES")
print("="*50)
print(f"✅ Movidos exitosamente : {movidos}")
print(f"🔄 Archivos pisados     : {pisados}")
print(f"⚠️  Omitidos (sin área)  : {omitidos}")
print(f"💾 Respaldados          : {backed_up}")
print(f"📁 Carpeta backup       : {carpeta_backup}")
print("="*50)
```

## Copiado de .nwd por area

Trimble Connect será nuestra herramienta para que quienes revisan y ejecutan vean los modelos realizados y enmarcados dentro de un proyecto.

En proyectos grandes y con cambios continuos por disciplina, se sugiere tener actualizados los .nwd asociados a cada área presentes en Trimble Connect. Sin embargo, hacer esto de forma manual resulta engorroso. Estas tareas se describen en [Trimble Connect - Ejecutor](../connect/connect-ejecutor.md).

### Armado de script

La rutina permite:

1. Identificar .nwd en carpeta y subcarpetas, ignorando cierto string ("SUPERADOS").
2. Copiar cada uno de esos archivos que sigan un patrón de nombre identificados.
3. Disponer todos en una carpeta llamada `AREAS_CONNECT` desde donde se subirán las versiones más recientes de los archivos a Trimble Connect.

#### Librerías

`shutil`: para mover archivos
`re`: para expresiones regulares
`pathlib`: para definicion de rutas

#### Funciones auxiliares


```python
def should_ignore_path(p: Path) -> bool:
    return any(part.lower() == ignore_dirname.lower() for part in p.parts)

def find_area_nwds(base: Path) -> list[Path]:
    found: list[Path] = []
    for p in base.rglob(f"*{ext_maqueta}"):
        if not p.is_file():
            continue
        if should_ignore_path(p):
            continue
        if pat_area_file.match(p.name):
            found.append(p)
    return sorted(found)

def copy_files(files: list[Path], destino: Path) -> None:
    destino.mkdir(parents=True, exist_ok=True)

    copied = 0

    for src in files:
        dst = destino / src.name
        shutil.copy2(src, dst)  # pisa sin preguntar
        copied += 1
        print(f"COPIADO (overwrite): {src} -> {dst}")

    print("\n--- RESUMEN ---")
    print(f"Encontrados: {len(files)}")
    print(f"Copiados:    {copied}")
    print(f"Salteados:   {skipped}")
```

#### Copiado y pegado

Más abajo se debe definir la ruta origen y la de destino a donde se quieren obtener los `.nwd`

Se debe adaptar la expresión regular `pat_area_file` en función de la codificación que usen para los .nwd de las áreas. Lo mismo aplica para el directorio de SUPERADOS, para excluir esas subcarpetas en caso de que existiesen `.nwd` que no se sobrescriban y se vayan superando.

```python

#Path ejemplo "T:\Trabajo Arg\PAM25026\12-GENERAL\10-COORDINACION 3D\02-3D MODEL\AREA_03\AREA_03.nwd"
path_base = Path(r"T:\Trabajo Arg\<PROYECTO>\12-GENERAL\10-COORDINACION 3D\02-3D MODEL")
ext_maqueta = (".nwd")
path_destino = Path(r'C:\Users\aperrotta\Hytech Ingeniería S.A\Agustin Diez - 348 - AGD - TEKLA\MODELOS\<PROYECTO>\00.EXPORT\AREAS_CONNECT')

# AREA_00.nwd, AREA_01.nwd, ... (case-insensitive)
pat_area_file = re.compile(r"^AREA_(\d{2})\.nwd$", re.IGNORECASE)

# Ignorar cualquier ruta que contenga "SUPERADOS" (case-insensitive)
ignore_dirname = "SUPERADOS"


archivos = find_area_nwds(path_base)

if not archivos:
    print("No se encontraron archivos tipo AREA_00.nwd bajo el directorio base (excluyendo SUPERADOS).")
else:
    print("Archivos encontrados:")
    for a in archivos:
        print(f" - {a}")

    copy_files(archivos, path_destino)
```



[← Volver al inicio](index.md)