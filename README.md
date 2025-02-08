# Flutter Development Fundamentals

##  Materi Pembelajaran

### 1. Pengantar Flutter
- Flutter adalah SDK lintas platform berbasis bahasa Dart.
- Memungkinkan pembuatan aplikasi untuk Android dan iOS dengan satu codebase.

### 2. Pengenalan Widget
- Widget adalah semua elemen yang tampil di Flutter, seperti teks, tombol, gambar, hingga layout.
- Widget diatur dalam Widget Tree, yaitu struktur hierarki yang terdiri dari parent dan child widget.

### 3. Widget Utama
- **MaterialApp**: Widget root untuk aplikasi berbasis Material Design.
- **Scaffold**: Struktur dasar halaman dalam Flutter.
- **SafeArea**: Memastikan konten aplikasi tidak keluar dari dimensi layar atau terpotong oleh notch, status bar, atau elemen lainnya.

### 4. Layout Widget
- **Column**: Menyusun widget secara vertikal.
- **Row**: Menyusun widget secara horizontal.
- **Stack**: Menumpuk elemen secara berlapis.
- **Alignment** digunakan untuk mengatur posisi elemen secara presisi.

### 5. Gambar dalam Flutter
#### **Image Network**
- Menampilkan gambar dari URL.
- Contoh:
```dart
Image.network('https://example.com/image.png');
```
#### **Image Assets**
- Menampilkan gambar yang disimpan secara lokal di proyek.
- Tambahkan referensi gambar di `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/images/
```
- Contoh penggunaan:
```dart
Image.asset('assets/images/example.png');
```

### 6. Tips Coding Flutter
- **Prettier**: Gunakan ekstensi Prettier untuk merapikan format kode secara otomatis di editor.
- **Pastikan Prettier diaktifkan** untuk meningkatkan keterbacaan dan menjaga konsistensi kode.

### 7. Analogi Widget
#### a. **Gambar Sepeda**
- Sepeda menggambarkan bahwa UI Flutter adalah hasil kombinasi berbagai komponen kecil yang saling terhubung.
- Sepeda sebagai keseluruhan UI aplikasi.
- Komponen seperti stang, roda, pedal adalah widget yang membangun aplikasi.

#### b. **Pohon Widget (Widget Tree)**
- Pohon Widget menunjukkan struktur hierarki widget di Flutter.
- Root widget (seperti MaterialApp) adalah akar pohon.
- Cabang dan daun adalah widget parent dan child yang saling terhubung.

##  Struktur Project Flutter

- `lib`: Folder utama tempat menyimpan file Dart.
- `android` dan `ios`: Tempat kode native disimpan untuk dimanfaatkan oleh Flutter.
- `pubspec.yaml`: Tempat mengatur dependencies atau konfigurasi kode tambahan.

##  Widget Tree
```
MyApp -> MaterialApp -> Scaffold -> Container -> Column/Row dll.
```

##  Widget Penting
- **SafeArea**: Menghindari konten aplikasi dari gangguan interface device seperti notch.
- **Container**: Membuat objek yang dapat dimanipulasi seperti tinggi, lebar, warna, dll.
- **Icon**: Menampilkan ikon dalam aplikasi.
- **Image**: Menampilkan gambar melalui **image.asset** atau **image.network**.
- **Button**: Membuat tampilan tombol dengan atribut seperti fungsi, teks, dan warna.

##  Layouting
- **Column**: Posisi elemen secara vertikal.
- **Row**: Posisi elemen ke samping secara horizontal.
- **Stack**: Elemen ditumpuk secara berlapis.
- **Main Axis & Cross Axis**: Digunakan untuk mengatur tata letak elemen di dalam Row atau Column.
