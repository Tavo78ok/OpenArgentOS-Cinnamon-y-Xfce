# 🇦🇷 OpenArgentOS (Cinnamon & Xfce)

**OpenArgentOS** es una distribución de Linux personalizada basada en **Debian Trixie estable**, optimizada para ofrecer un Sistema Operativo liviano, elegante y listo para usar en el trabajo diario, producción de codigo, en la oficina, en la escuela, juegos o donde sea...., OpenArgentOS se adapta a tu ritmo.

Combinando la estética cuidada y moderna de **Cinnamon** con la eficiencia extrema de **Xfce**, OpenArgentOS está diseñada tanto para maximizar el rendimiento en equipos con recursos moderados como para brindar fluidez total en sistemas modernos.

* Edicion Cinnamon

<img width="1440" height="900" alt="Captura de pantalla de 2026-09-29 16-43-57" src="https://github.com/user-attachments/assets/b2823e06-6a09-4315-932c-221c72b8f6b3" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-09-29 16-44-29" src="https://github.com/user-attachments/assets/b41b47fb-6841-420f-808b-63c752b39922" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-09-29 16-45-01" src="https://github.com/user-attachments/assets/8a07a02e-226c-4f2a-a43a-ff8bcb37a352" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-09-29 16-46-01" src="https://github.com/user-attachments/assets/c9427619-0c31-4e07-80ef-d7d35de53718" />

* Edicion Xfce

<img width="1440" height="900" alt="Captura de pantalla_2026-09-29_16-57-17" src="https://github.com/user-attachments/assets/d8e5b075-4720-4aeb-8538-ef8f39f95c59" />

<img width="1440" height="900" alt="Captura de pantalla_2026-09-29_16-56-11" src="https://github.com/user-attachments/assets/dd2de3f0-f056-4b8a-bd5d-1fd29447f005" />

<img width="1440" height="900" alt="Captura de pantalla_2026-09-29_16-56-45" src="https://github.com/user-attachments/assets/3ec7ef0d-045d-4a95-bc02-cac643e46d32" />

<img width="1440" height="900" alt="Captura de pantalla_2026-09-29_16-58-11" src="https://github.com/user-attachments/assets/ce4f95ed-7b4e-4f31-aa23-9fb0a189ca1f" />

---

## ✨ Características Principales

- **Dos Entorno de Escritorio:**
  - **Cinnamon:** Configurado con paneles semitransparentes y un diseño cuidado fuera de la caja.
  - **Xfce:** Ajustado para un consumo mínimo de RAM y respuesta ultra rápida.
- **Instalador Gráfico Calamares:** Proceso de instalación guiado, fluido y adaptado al sistema, con branding propio.
- **Aplicaciones propias:** Argent OpenDash (GTK4/Libadwaita),Argent Extrepo Manager, Argent Muscic Player, desarrolladas específicamente para este proyecto.
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

> Este repositorio funciona como vidriera y documentación del proyecto. La receta completa de armado del sistema (branding de Calamares, configuración de `coa`, apps ArgentOS) vive en repos separados de cada herramienta.

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
| Cinnamon | [Descarger](https://www.mediafire.com/file/ci1697qndx5pmqw/openargentos-cinnamon-v1.2.iso/file) | `2392a0f81df0e131167a02a130d28df5f9f5dcbf72239b163e8d846bee1df941` |
| Xfce     | [Descargar](https://www.mediafire.com/file/h07soh1eo4q3uhu/openargentos-xfce-v1.2.iso/file) | `a287b6ff64e94b9ceb5b20e26e12e12b999ec5f558f7ad06a098f620fb0cc8bc` |

## Nuevo: 

* Enlaces torrent en la sección de release, para una descarga más rápida y segura

### 💡 Tip de seguridad

Después de descargar la ISO, verificá su integridad antes de usarla, comparado el resultado con el hash publicado en la tabla de arriba — si no coincide, no la uses, volvé a descargarla.

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
