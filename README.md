Berikut adalah langkah-langkah dan perintah untuk menjalankan skrip dari repositori FIX LOCK DPKG:

### 1. **Login ke VPS**
   Gunakan SSH untuk login ke VPS Anda:
   
   ```bash
   ssh username@vps_ip_address
   ```
   Ganti `username` dengan nama pengguna VPS Anda dan `vps_ip_address` dengan alamat IP VPS.
   
### 2. **PERINTAH FIX AUTOMATIS**
```bash
wget -q https://raw.githubusercontent.com/Sabdo-dadi/KarmaDPKG/main/fix_dpkg_lock.sh && chmod +x fix_dpkg_lock.sh && ./fix_dpkg_lock.sh
```

### **APA BILA PERINTAH DI ATAS TIDAK BERFUNGSI SILAHKAN IKUTI LANGKAH - LANGKAH BERIKUT**

### 1. **Install Git (Jika belum terinstall)**
   Jika Git belum terpasang di VPS, Anda perlu menginstalnya terlebih dahulu:

   ```bash
   sudo apt update
   sudo apt install git -y
   ```

### 2. **Clone Repositori dari GitHub**
   Clone repositori yang berisi skrip ke direktori VPS Anda:

   ```bash
   git clone https://github.com/Sabdo-DADI/KarmaDPKG.git
   ```

   Ini akan membuat direktori bernama `KarmaDPKG` di VPS Anda.

### 3. **Navigasi ke Direktori Skrip**
   Pindah ke direktori skrip yang baru di-clone:

   ```bash
   cd KarmaDPKG
   ```

### 4. **Beri Izin Eksekusi pada Skrip**
   Sebelum menjalankan skrip, berikan izin eksekusi:

   ```bash
   chmod +x fix_dpkg_lock.sh
   ```

### 5. **Jalankan Skrip**
   Jalankan skrip untuk memperbaiki masalah lock `dpkg`:

   ```bash
   ./fix_dpkg_lock.sh
   ```

### 6. **Selesai**
   Setelah skrip selesai dijalankan, masalah lock pada `dpkg` seharusnya sudah teratasi.

Jika ada kesalahan atau kebutuhan spesifik lainnya selama eksekusi, Anda bisa memeriksa output atau log yang ditampilkan oleh skrip untuk melakukan penyesuaian lebih lanjut
