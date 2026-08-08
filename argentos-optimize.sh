#!/bin/bash
# argentos-optimize.sh — OpenArgentOS System Optimizer
# Ejecutar vía: pkexec bash argentos-optimize.sh

set -e
LOG=/tmp/argentos-optimize.log
exec > >(tee -a "$LOG") 2>&1

echo "=== OpenArgentOS Optimizer — $(date) ==="

# ── 1. Swappiness + cache pressure ──────────────────────────────────────────
SYSCTL=/etc/sysctl.d/99-openargentos.conf
cat > "$SYSCTL" << 'EOF'
# OpenArgentOS — Optimización de memoria
vm.swappiness=10
vm.vfs_cache_pressure=50
EOF
sysctl -p "$SYSCTL"
echo "✓ Swappiness=10 y cache_pressure=50 configurados"

# ── 2. Preload ────────────────────────────────────────────────────────────────
if ! dpkg -l preload &>/dev/null; then
    apt-get install -y preload
fi
systemctl enable preload --now
echo "✓ Preload instalado y activo"

# ── 3. ZRAM ───────────────────────────────────────────────────────────────────
if ! dpkg -l zram-tools &>/dev/null; then
    apt-get install -y zram-tools
fi
cat > /etc/default/zramswap << 'EOF'
# OpenArgentOS ZRAM — lz4 al 50% de RAM
ALGO=lz4
PERCENT=50
EOF
systemctl enable zramswap --now || systemctl restart zramswap || true
echo "✓ ZRAM configurado (lz4, 50% de RAM)"

# ── 4. Swapfile 4 GB ──────────────────────────────────────────────────────────
if [ ! -f /swapfile ]; then
    echo "Creando swapfile de 4 GB..."
    fallocate -l 4G /swapfile
    chmod 600 /swapfile
    mkswap /swapfile
    swapon /swapfile
    grep -q '/swapfile' /etc/fstab || \
        echo '/swapfile none swap sw 0 0' >> /etc/fstab
    echo "✓ Swapfile 4 GB creado en /swapfile y activado"
else
    echo "• Swapfile ya existe — sin cambios"
fi

echo ""
echo "=== ✓ Optimización completada correctamente ==="
echo "   Reiniciá para que todos los cambios tomen efecto."
