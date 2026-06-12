<<<<<<< HEAD
<<<<<<< HEAD
# riau_go

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======
=======
>>>>>>> bf1ae644ea1d36a299283cf422528218679507de
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
<<<<<<< HEAD
>>>>>>> bf1ae644ea1d36a299283cf422528218679507de
=======
>>>>>>> bf1ae644ea1d36a299283cf422528218679507de
