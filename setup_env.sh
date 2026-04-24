#!/usr/bin/env bash
# setup_env.sh — Create a Python virtual environment with core NCL CLI tools
# Usage: bash setup_env.sh

set -euo pipefail

VENV_DIR=".venv"

echo "=== NCL Template Environment Setup ==="

# ── Python venv ──────────────────────────────────────────────
if [ -d "$VENV_DIR" ]; then
    echo "[*] Virtual environment already exists at $VENV_DIR"
else
    echo "[+] Creating Python virtual environment..."
    python3 -m venv "$VENV_DIR"
fi

# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"
echo "[+] Activated venv ($VENV_DIR)"

echo "[+] Upgrading pip..."
pip install --upgrade pip --quiet

# ── Core Python packages ─────────────────────────────────────
echo "[+] Installing Python tools..."
pip install --quiet \
    pycryptodome \
    pwntools \
    scapy \
    requests \
    beautifulsoup4 \
    python-whois \
    PyExifTool \
    pillow \
    volatility3 \
    hashid \
    name-that-hash \
    search-that-hash \
    sqlmap \
    binwalk \
    stegano \
    python-magic \
    oletools \
    impacket

# ── System packages note ─────────────────────────────────────
echo ""
echo "[!] Some tools are system-level and not pip-installable."
echo "    Install them separately if needed:"
echo "      sudo apt install exiftool steghide foremost testdisk nmap john"

echo ""
echo "=== Installed Python packages ==="
pip list --format=columns
echo ""
echo "=== Setup complete ==="
echo "Activate with:  source $VENV_DIR/bin/activate"
