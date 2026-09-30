# DKR-PS2 Starter

Primer punto de partida para un port nativo de **Diddy Kong Racing (N64)** a PlayStation 2.

## ROM verificada

Usaremos la ROM USA v1.0:

- Archivo: `Diddy Kong Racing (USA) (En,Fr).z64`
- SHA-1: `0cb115d8716dbbc2922fda38e533b9fe63bb9670`
- Esperado por la decompilacion principal: `0cb115d8716dbbc2922fda38e533b9fe63bb9670`
- Estado: OK

La Rev 1 tambien fue verificada:
- SHA-1: `6d96743d46f8c0cd0edb0ec5600b003c89b93755`

## Objetivo de este paquete

**Milestone 0:**
1. Compilar un ELF nativo de PS2.
2. Inicializar GS mediante gsKit.
3. Mostrar una pantalla de prueba.
4. Confirmar que PS2SDK/gsKit y el flujo de build funcionan.

Todavia NO contiene codigo ni assets comerciales de Diddy Kong Racing.

## Requisitos en el PC

- PS2DEV toolchain
- PS2SDK
- gsKit
- make

Variables esperadas:

```sh
export PS2DEV=/usr/local/ps2dev
export PS2SDK=$PS2DEV/ps2sdk/ports
export GSKIT=$PS2DEV/gsKit
```

La ubicacion exacta de PS2SDK puede variar segun la instalacion.

## Compilar

```sh
make
```

Debe producir:

```text
DKRPS2.ELF
```

## Verificar la ROM

```sh
python3 tools/check_rom.py "/ruta/Diddy Kong Racing (USA) (En,Fr).z64"
```

## Siguiente milestone

Una vez que este ELF arranque:

- integrar la capa de entrada del DualShock 2;
- preparar el loader de assets extraidos de la ROM;
- importar solo el minimo de la decomp para llegar al boot;
- implementar F3DDKR -> GS por etapas:
  1. vertices y matrices;
  2. triangulos sin textura;
  3. texturas RGBA/CI/IA/I;
  4. combiner;
  5. Z-buffer, fog, alpha y scissor.

No se incluira la ROM ni assets originales en el codigo fuente del port.
