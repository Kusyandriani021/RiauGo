#  RiauGo - Aplikasi Wisata Provinsi Riau

RiauGo merupakan aplikasi wisata berbasis Flutter yang dirancang untuk membantu pengguna menemukan destinasi wisata terbaik di Provinsi Riau. Aplikasi ini menyediakan fitur pencarian destinasi, pemesanan tiket wisata, favorit destinasi, review dan rating, serta manajemen profil pengguna.

# Anggota Kelompok 

| Nama | NIM |
|------|-----|
| Kusy Andriani | [2355201010] |
| Fatimatu Zahro | [2355201017]] |
| Leni Listiawati | [2355201021] |
| Novita Nur Rohmah | [2355201031] |

> **Mata Kuliah:** Pemrograman Mobile
> **Program Studi:** Teknik Informatika

## Tentang Aplikasi

RiauGo dikembangkan sebagai proyek mata kuliah Pemrograman Mobile menggunakan Flutter dan Firebase. Aplikasi ini memanfaatkan Firebase Authentication untuk autentikasi pengguna dan Cloud Firestore sebagai database penyimpanan data.

---

##  Fitur Utama

###  Autentikasi Pengguna

* Login akun
* Registrasi akun
* Logout
* Ubah password

###  Eksplorasi Destinasi

* Menampilkan daftar destinasi wisata
* Pencarian destinasi
* Detail destinasi wisata
* Informasi harga tiket
* Rating destinasi

###  Pemesanan Tiket

* Booking tiket wisata
* Pemilihan jumlah tiket
* Penyimpanan data booking ke Firebase
* Pembatalan tiket
* E-Ticket Digital
* Cetak / Download Tiket PDF

###  Favorit

* Menambahkan destinasi ke favorit
* Menampilkan daftar favorit pengguna

###  Review dan Rating

* Memberikan review destinasi
* Memberikan rating destinasi
* Menampilkan ulasan pengguna

##  Teknologi yang Digunakan

### Frontend

* Flutter
* Dart

### Backend

* Firebase Authentication
* Cloud Firestore

### Library Tambahan

* pdf
* printing
* firebase_core
* firebase_auth
* cloud_firestore

---

##  Arsitektur Sistem

User
↓
Flutter Application
↓
Firebase SDK
↓
Firebase Authentication
Cloud Firestore

---

##  Struktur Database Firestore

### users

* uid
* name
* email
* role
* createdAt

### bookings

* userId
* destinationName
* jumlahTiket
* price
* paymentMethod
* status
* createdAt

### favorites

* userId
* destinationName

### reviews

* userId
* destinationName
* rating
* review
* createdAt

---

##  Tampilan Aplikasi

* Login Screen
* Register Screen
* Home Screen
* Explore Screen
* Detail Destination Screen
* Booking Screen
* Ticket Screen
* Favorite Screen
* Profile Screen
* Admin Dashboard



##  Lisensi

Project ini dibuat untuk keperluan pembelajaran dan tugas akademik.
