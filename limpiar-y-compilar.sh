#!/bin/bash
# =====================================================================
# Script de Sanitización y Compilación Limpia para OpenArgentOS
# =====================================================================

# Colores para la terminal
VERDE='\033[0;32m'
AZUL='\033[0;34m'
ROJO='\033[0;31m'
NC='\033[0m' # Sin Color

echo -e "${AZUL}🧹 Iniciando limpieza profunda del sistema de desarrollo...${NC}"

# 1. Detener servicios de logs temporales si estuvieran activos
echo -e "${AZUL}-> Limpiando logs del sistema (journald)...${NC}"
sudo journalctl --vacuum-time=1s > /dev/null 2>&1

# 2. Limpieza de rastros de editores de código y herramientas de desarrollo
echo -e "${AZUL}-> Borrando cachés de Python y entornos de código...${NC}"
rm -rf ~/.cache/pip
rm -rf ~/.cache/pypoetry
find ~ -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null

# 3. Limpieza de archivos recientes y portapapeles del entorno gráfico
echo -e "${AZUL}-> Volando lista de archivos recientes en GTK/XFCE/Gnome...${NC}"
rm -f ~/.local/share/recently-used.xbel
rm -f ~/.config/dconf/user_backups*
rm -rf ~/.cache/thumbnails/*

# 4. Limpieza preventiva de navegadores (por si las moscas)
echo -e "${AZUL}-> Eliminando perfiles temporales de navegación...${NC}"
rm -rf ~/.cache/mozilla/firefox/*
rm -rf ~/.cache/google-chrome/*
rm -rf ~/.cache/chromium/*

# 5. Limpieza del sistema de paquetes APT (crucial para que la ISO pese menos)
echo -e "${AZUL}-> Purgando caché de paquetes descargados de APT...${NC}"
sudo apt-get autoremove --purge -y
sudo apt-get clean

# 6. El toque final: Vaciar las papeleras y los directorios /tmp
echo -e "${AZUL}-> Vaciando papeleras de reciclaje y temporales del sistema...${NC}"
rm -rf ~/.local/share/Trash/*
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

# 7. Limpieza absoluta del historial de la Terminal actual y pasadas
echo -e "${AZUL}-> Borrando el historial de comandos de Bash/Zsh...${NC}"
history -c
rm -f ~/.bash_history ~/.zsh_history
export HISTSIZE=0

echo -e "${VERDE}✨ ¡Sistema sanitizado y libre de rastros personales!${NC}"
echo "--------------------------------------------------------"
echo -e "${AZUL}🚀 Iniciando la secuencia automatizada de Penguins Eggs...${NC}"
echo "--------------------------------------------------------"

# Ejecución de tu secuencia limpia de compilación
echo -e "${AZUL}[1/3] Ejecutando: sudo coa destroy (Limpieza de builds previos)...${NC}"
sudo coa destroy

echo -e "${AZUL}[2/3] Ejecutando: sudo coa tools skel (Sincronizando entorno limpio)...${NC}"
sudo coa tools skel

echo -e "${AZUL}[3/3] Ejecutando: sudo coa remaster (Compilando ISO final)...${NC}"
sudo coa remaster

echo "--------------------------------------------------------"
echo -e "${VERDE}🎉 ¡Proceso finalizado! Buscá tu ISO impecable en /home/eggs/${NC}"
echo "--------------------------------------------------------"
