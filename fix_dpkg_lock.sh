#!/bin/bash

# Skrip untuk mengatasi masalah lock dpkg
echo -e "\e[94;1m╔═════════════════════════════════════════════════╗$NC"
echo -e "${OK} FIX LOCK DPKG BY SABDO PALON STORE{NC} )"
echo -e "\e[94;1m╚═════════════════════════════════════════════════╝ $NC"
echo "Memeriksa apakah ada proses yang menggunakan dpkg lock..."

# Periksa apakah ada proses yang menggunakan lock
LOCKED_PROCESS=$(sudo lsof /var/lib/dpkg/lock)

if [ -n "$LOCKED_PROCESS" ]; then
  echo "Proses yang menggunakan dpkg ditemukan:"
  echo "$LOCKED_PROCESS"

  # Ambil PID dari proses yang menggunakan lock
  PID=$(echo "$LOCKED_PROCESS" | awk 'NR==2 {print $2}')
  echo "Menghentikan proses dengan PID: $PID"
  sudo kill -9 "$PID"
else
  echo "Tidak ada proses yang menggunakan dpkg lock."
fi

# Hapus file lock
echo "Menghapus file lock dpkg..."
sudo rm -f /var/lib/dpkg/lock
sudo rm -f /var/lib/dpkg/lock-frontend
sudo rm -f /var/cache/apt/archives/lock

# Konfigurasi ulang dpkg
echo "Mengonfigurasi ulang dpkg..."
sudo dpkg --configure -a

# Update dan upgrade paket
echo "Melakukan update dan upgrade paket..."
sudo apt update && sudo apt upgrade -y
echo -e "\e[94;1m╔═════════════════════════════════════════════════╗$NC"
echo -e "${OK} SUCCESS! DPKG BERHASIL DI PERBAIKI BY SPS {NC} )"
echo -e "\e[94;1m╚═════════════════════════════════════════════════╝ $NC"
echo "Selesai! Masalah lock dpkg telah diatasi."
