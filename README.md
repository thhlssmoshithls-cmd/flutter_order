# Flutter-Order Kelompok 6 Mata Kuliah Pemrograman Perangkat Bergerak

## Nama Anggota
1. Ajeng Maulida Puspita (362458302012)
2. Lilis Thalisa (362458302020)
3. Nisa Eka Kholifaturrizkiah (362458302018)
4. Siti Faiqotul Kifiyah (362458302021) 

## Deskripsi Aplikasi
Project ini adalah mini project untuk mata kuliah Mobile Development. Tujuannya membuat aplikasi sederhana untuk pemesanan makanan & minuman menggunakan Flutter.
Aplikasi ini mempunyai fitur utama: registrasi, login, lihat menu, tambah/kurang pesanan, jumlah pesanan, reset, sampai ringkasan transaksi.

## Desain Aplikasi
Ada 3 halaman utama, yaitu:
1. Registrasi (Create Account):buat akun baru dengan data fullname, username, email, password.
2. Login (Welcome Back) – login pakai username & password.
3. Menu (Menus) – daftar makanan/minuman, bisa tambah/kurang pesanan.
4. Ringkasan Transaksi yang menunjukan item yang dipesan, jumlah, harga, subtotal, dan total harga keseluruhan.

## Fitur Utama
1. Registrasi: data user disimpan sementara di variabel global (tidak menggunakan database).
2. Login: validasi username & password, kalau berhasil masuk ke halaman Menu.
3. Navigasi: bisa pindah dari Login ke Registrasi atau sebaliknya.
4. Menu Interaktif:
- Tombol + buat nambah jumlah pesanan.
- Tombol - buat ngurangin pesanan (minimal 0).
- Tombol Reset buat balikin semua pesanan ke 0.
- Tombol Transaction buat pindah ke halaman Ringkasan Transaksi.
