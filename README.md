# tugas3praktikum2024

Nama : Tahta Setyo Nugroho
NIM : H1D022066
Shift Baru : E

Tugas 3 Praktikum 2024

1. Proses Login
Pengguna memasukkan username dan password pada halaman login. Setelah menekan tombol Login, username disimpan menggunakan SharedPreferences. Navigasi ke HomePage dilakukan dengan menggunakan Navigator.pushReplacement() setelah proses login berhasil.

2. Proses Perpindahan Halaman dengan Sidebar
SideMenu berfungsi sebagai navigasi. Setiap menu, seperti Dashboard, Settings, atau About, ditampilkan menggunakan ListTile dengan aksi onTap. Ketika salah satu item diklik, halaman baru dibuka dengan menggunakan Navigator.pushReplacement().

3. Penggunaan Router (Navigasi)
Dalam aplikasi ini, Navigator.pushReplacement() digunakan untuk berpindah halaman dan mengganti halaman saat ini dengan halaman baru. Metode ini memastikan bahwa pengguna tidak bisa kembali ke halaman sebelumnya (misalnya, setelah login). Setelah pengguna berhasil login, aplikasi menggunakan Navigator.pushReplacement() untuk menavigasi dari halaman login ke halaman utama (HomePage). Dengan menggunakan pushReplacement(), halaman login akan dikeluarkan dari stack navigasi, yang berarti pengguna tidak dapat kembali ke halaman login menggunakan tombol kembali, karena halaman tersebut sudah digantikan oleh halaman HomePage.