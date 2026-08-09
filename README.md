# 🇦🇷 OpenArgentOS (Cinnamon & Xfce)

**OpenArgentOS** es una distribución de Linux personalizada basada en Debian/LMDE, optimizada para ofrecer un sistema operativo liviano, elegante y listo para usar en el trabajo diario, producción y en el banco de pruebas.

Combinando la estética cuidada y moderna de **Cinnamon** con la eficiencia extrema de **Xfce**, OpenArgentOS está diseñada tanto para maximizar el rendimiento en equipos con recursos moderados como para brindar fluidez total en sistemas modernos.

---

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-40-00" src="https://github.com/user-attachments/assets/a8c8a1af-87cc-4595-aa59-434cc54d7c77" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-40-36" src="https://github.com/user-attachments/assets/732fbd80-2580-4667-96c0-e816be38734f" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-40-14" src="https://github.com/user-attachments/assets/f14ac49f-bda2-497c-a15e-24b16981bd61" />

<img width="1440" height="900" alt="Captura de pantalla de 2026-08-08 21-41-26" src="https://github.com/user-attachments/assets/019209d5-b7a1-487c-9b3b-060b235854c6" />



## ✨ Características Principales

* **Doble Entorno de Escritorio:**
  * **Cinnamon:** Configurado con paneles semitransparentes y un diseño cuidado fuera de la caja.
  * **Xfce:** Ajustado para un consumo mínimo de RAM y respuesta ultra rápida.
* **Instalador Gráfico Calamares:** Proceso de instalación guiado, fluido y adaptado al sistema.
* **Ecosistema COA Tools:** Incluye las herramientas propias del proyecto (`coa tools skel`, scripts de despliegue y personalización).
* **Configuración Out-of-the-Box:** Widgets integrados (*Gis-Weather*), pantalla de bienvenida y perfiles de usuario preconfigurados en `/etc/skel`.

---

## 💻 Requisitos del Sistema

| Componente | Requisito Mínimo | Recomendado |
| :--- | :--- | :--- |
| **Procesador** | 64-bit Dual Core | 64-bit Quad Core |
| **Memoria RAM** | 2 GB | 4 GB o superior |
| **Almacenamiento** | 15 GB HDD | 20 GB SSD |
| **Pantalla** | 1024 x 768 | 1920 x 1080 |

---

## 🛠️ Estructura del Proyecto

* `/etc/skel` - Plantillas de perfil predeterminadas para usuarios nuevos.
* `/etc/xdg/autostart` - Scripts y accesos directos de inicio automático global (*Welcome*, *Gis-Weather*).
* `calamares/` - Archivos de configuración de los módulos del instalador.
* `scripts/` - Scripts auxiliares de desarrollo y empaquetado (`coa`).

---

## 🚀 Compilación de la Imagen ISO

Para generar la imagen ISO ejecutable utilizando las herramientas del proyecto:

```bash
# 1. Clonar el repositorio
git clone [https://github.com/Tavo78ok/OpenArgentOS-Cinnamon-y-Xfce-.git](https://github.com/Tavo78ok/OpenArgentOS-Cinnamon-y-Xfce-.git)
cd OpenArgentOS-Cinnamon-y-Xfce-

# 2. Ejecutar la herramienta de compilación
sudo coa build
```
## 📥 Descarga de la ISO
Las imágenes ISO oficiales listas para grabar en un pendrive (usando Ventoy, Rufus o el comando dd) se encuentran alojadas en Mediafire:

*Versión Escritorios: 

*Enlace de Descarga:

*Verificación SHA256 OpenArgentOS v1.0 (64-bit)Cinnamon & Xfce

*Descargar desde Mediafire: AQUI_TU_CODIGO_SHA256

## 💡 Tip de seguridad: Después de descargar la ISO, podés verificar su integridad en la terminal corriendo:
sha256sum OpenArgentOS.iso

## ☕ Apoyá el desarrollo de OpenArgentOS

OpenArgentOS es un proyecto independiente y de código abierto. Si la distro te sirve para trabajar en tu taller, te ahorra tiempo o simplemente querés colaborar para mantener el desarrollo activo, podés apoyar el proyecto:

🇦🇷 Desde Argentina (Mercado Pago):

💳 Alias MP: tavo.78.ok

🔗 Link de Pago / CVU: 0000003100099682904311

🌎 Desde el exterior (PayPal):

💙 PayPal: https://paypal.me/GustavoCuevas582

¡Cada aporte ayuda un montón a seguir puliendo el sistema, mantener los repositorios y probar las ISOs en más equipamiento! 🙌

📄 Licencia
Este proyecto es de código abierto y está distribuido bajo la licencia GPLv3.



