# 🇦🇷 OpenArgentOS (Cinnamon & Xfce)

**OpenArgentOS** es una distribución de Linux personalizada basada en **Debian Trixie estable**, optimizada para ofrecer un sistema operativo liviano, elegante y listo para usar en el trabajo diario, producción, en la oficina, en la escuela o donde sea....

Combinando la estética cuidada y moderna de **Cinnamon** con la eficiencia extrema de **Xfce**, OpenArgentOS está diseñada tanto para maximizar el rendimiento en equipos con recursos moderados como para brindar fluidez total en sistemas modernos.

* Edicion Cinnamon

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-40-00" src="https://github.com/user-attachments/assets/338206b5-ac64-4fd7-84dc-c7f03002419a" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-40-14" src="https://github.com/user-attachments/assets/89644015-f464-4fa6-8d73-f292c15be23d" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-40-36" src="https://github.com/user-attachments/assets/e28e328c-bb0e-4fd8-83dc-129cdb760932" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-41-26" src="https://github.com/user-attachments/assets/a84f1c07-9087-4732-8482-db911ad8d663" />

* Edicion Xfce

<img width="1440" height="900" alt="Captura de pantalla_2026-08-10_18-40-24" src="https://github.com/user-attachments/assets/6959cfaa-5a0c-4899-8332-04d64a90b1ff" />

<img width="1440" height="900" alt="Captura de pantalla_2026-08-10_18-40-46" src="https://github.com/user-attachments/assets/770dfdfb-3465-442d-a845-ca3e1c34a710" />

<img width="1440" height="900" alt="Captura de pantalla_2026-08-10_18-41-10" src="https://github.com/user-attachments/assets/afe22ffd-4ea3-4b51-878b-e51519b05b3e" />

<img width="1440" height="900" alt="Captura de pantalla_2026-08-10_18-44-02" src="https://github.com/user-attachments/assets/5e78ef5e-4c9f-4490-b9ed-4c0c91e82e22" />

---

## ✨ Características Principales

- **Doble Entorno de Escritorio:**
  - **Cinnamon:** Configurado con paneles semitransparentes y un diseño cuidado fuera de la caja.
  - **Xfce:** Ajustado para un consumo mínimo de RAM y respuesta ultra rápida.
- **Instalador Gráfico Calamares:** Proceso de instalación guiado, fluido y adaptado al sistema, con branding propio.
- **Herramientas propias:** Argent OpenDash (GTK4/Libadwaita) y Argent Extrepo Manager, desarrolladas específicamente para este proyecto.
- **Configuración Out-of-the-Box:** Widget de clima integrado, pantalla de bienvenida y perfiles de usuario preconfigurados en `/etc/skel`, listos desde el primer inicio de sesión.
- **WineHQ preinstalado** y todo lo necesario para instalar y usar aplicaciones de Windows.

---

## 💻 Requisitos del Sistema

| Componente         | Requisito Mínimo | Recomendado      |
| ------------------ | ----------------- | ------------------ |
| **Procesador**     | 64-bit Dual Core  | 64-bit Quad Core  |
| **Memoria RAM**    | 2 GB               | 4 GB o superior   |
| **Almacenamiento** | 15 GB HDD          | 20 GB SSD          |
| **Pantalla**       | 1024 x 768         | 1920 x 1080        |

---

## 🛠️ Estructura del Repositorio

- `OpenArgentOS-Wallpapers/` — Fondos de pantalla oficiales del proyecto.
- `argentos-optimize.sh` — Optimizador de sistema para el usuario final: ajusta `swappiness` y `vfs_cache_pressure`, instala y activa `preload`, configura ZRAM (lz4, 50% de la RAM) y crea un swapfile de 4 GB si no existe.
- `limpiar-y-compilar.sh` — Script de build para desarrollo: sanitiza el equipo (historial de bash, cachés de navegador, archivos recientes, logs de journald) para que no viaje ningún rastro personal a la ISO, y encadena `coa destroy` → `coa tools skel` → `coa remaster` para dejar la imagen final en `/home/eggs/`.
- `LICENSE` — Licencia GPLv3.

> Este repositorio funciona como vidriera y documentación del proyecto. La receta completa de armado del sistema (branding de Calamares, configuración de `coa`, apps ArgOS) vive en repos separados de cada herramienta.

---

## 🚀 Compilación de la Imagen ISO

OpenArgentOS se construye con **[coa](https://github.com/pieroproietti/penguins-eggs)**, la herramienta de remasterizado de Piero Proietti — no es una herramienta propia de este proyecto, y no queda instalada en el sistema final (se purga automáticamente durante la instalación).

Para generar tu propia ISO a partir de un sistema OpenArgentOS ya configurado:

```bash
sudo coa destroy
sudo coa tools skel
sudo coa remaster
```

O usá directamente `limpiar-y-compilar.sh` de este repo, que además sanitiza el equipo (borra historial, cachés de navegador y logs) antes de encadenar los tres pasos, para que no viaje ningún rastro personal del desarrollador a la ISO final.

La ISO resultante queda en `/home/eggs/`.

---

## 📥 Descarga de la ISO

Las imágenes ISO oficiales, listas para grabar en un pendrive (con Ventoy, Rufus o el comando `dd`), están alojadas en Mediafire:

| Edición  | Descarga | SHA256 |
| -------- | -------- | ------ |
| Cinnamon | [Descargar](TU_LINK_AQUI) | `TU_HASH_SHA256_AQUI` |
| Xfce     | [Descargar](TU_LINK_AQUI) | `TU_HASH_SHA256_AQUI` |

### 💡 Tip de seguridad

Después de descargar la ISO, verificá su integridad antes de usarla:

```bash
sha256sum OpenArgentOS.iso
```

Comparado el resultado con el hash publicado en la tabla de arriba — si no coincide, no la uses, volvé a descargarla.

---

## ☕ Apoyá el desarrollo de OpenArgentOS

OpenArgentOS es un proyecto independiente y de código abierto. Si la distro te sirve para trabajar en tu taller, te ahorra tiempo o simplemente querés colaborar para mantener el desarrollo activo, podés apoyar el proyecto:

**🇦🇷 Desde Argentina (Mercado Pago):**
- 💳 Alias MP: `tavo.78.ok`
- 🔗 CVU: `0000003100099682904311`

**🌎 Desde el exterior (PayPal):**
- 💙 [paypal.me/GustavoCuevas582](https://paypal.me/GustavoCuevas582)

¡Cada aporte ayuda un montón a seguir puliendo el sistema, mantener los repositorios y probar las ISOs en más equipamiento! 🙌

---

## 📄 Licencia

Este proyecto es de código abierto y está distribuido bajo la licencia **GPLv3**.
