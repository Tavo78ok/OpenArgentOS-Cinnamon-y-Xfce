# 🇦🇷 OpenArgentOS (Cinnamon & Xfce)

**OpenArgentOS** es una distribución de Linux personalizada basada en Debian/LMDE, optimizada para ofrecer un sistema operativo liviano, elegante y listo para usar en el trabajo diario, producción y en el banco de pruebas.

Combinando la estética cuidada y moderna de **Cinnamon** con la eficiencia extrema de **Xfce**, OpenArgentOS está diseñada tanto para maximizar el rendimiento en equipos con recursos moderados como para brindar fluidez total en sistemas modernos.

---

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
# 📥 Descarga de la ISO
Las imágenes ISO oficiales listas para grabar en un pendrive (usando Ventoy, Rufus o el comando dd) se encuentran alojadas en Mediafire:
*Versión Escritorios 
*Enlace de Descarga 
*Verificación SHA256OpenArgentOS v1.0 (64-bit)Cinnamon & Xfce🔗 
*Descargar desde Mediafire AQUI_TU_CODIGO_SHA256

# 💡 Tip de seguridad: Después de descargar la ISO, podés verificar su integridad en la terminal corriendo:
sha256sum OpenArgentOS.iso

# ☕ Apoyá el desarrollo de OpenArgentOS

OpenArgentOS es un proyecto independiente y de código abierto. Si la distro te sirve para trabajar en tu taller, te ahorra tiempo o simplemente querés colaborar para mantener el desarrollo activo, podés apoyar el proyecto:

🇦🇷 Desde Argentina (Mercado Pago):

💳 Alias MP: TU.ALIAS.MP

🔗 Link de Pago / CVU: Mercado Pago

🌎 Desde el exterior (PayPal):

💙 PayPal: paypal.me/TU_USUARIO

¡Cada aporte ayuda un montón a seguir puliendo el sistema, mantener los repositorios y probar las ISOs en más equipamiento! 🙌

📄 Licencia
Este proyecto es de código abierto y está distribuido bajo la licencia GPLv3.



