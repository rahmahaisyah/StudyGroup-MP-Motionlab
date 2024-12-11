# Package & Navigation || Intro State & Widget Lifecycle

## 1. Penggunaan Stateful dan Stateless Widget
### Stateful Widget
- Digunakan untuk widget yang memiliki state atau kondisi yang dapat berubah seiring waktu.
- class SplashScreen: Menggunakan `StatefulWidget` karena membutuhkan logika waktu (timer) untuk navigasi otomatis ke halaman registrasi.
### Stateless Widget
- Digunakan untuk widget yang bersifat statis, tidak memiliki state yang berubah.
- terdapat pada class `LoginScreen` dan `RectangleButton`: Tidak ada data yang diubah saat aplikasi berjalan.
## 2. Widget Reusable
Penggunaan widget yang dapat digunakan ulang (reusable widget) mempermudah pengelolaan dan pengembangan aplikasi.
### Contoh Widget Reusable:
- class Rectangle:
  Widget untuk input teks dengan ikon dan dekorasi, digunakan di halaman login dan registrasi.
- class RectangleBUutton:
  Tombol serbaguna dengan teks, warna, dan aksi yang dapat dikustomisasi.
- class Style
  Berbagai style text yang digunakan di dalam project ini
## 3. Navigasi Antar Halaman
Navigasi dilakukan menggunakan Navigator dengan metode:
- `Navigator.push`: Untuk berpindah ke halaman baru.
- `Navigator.pop`: Untuk kembali ke halaman sebelumnya.
- `Navigator.pushReplacement`: Untuk mengganti halaman saat ini dengan halaman baru (digunakan di SplashScreen).
#### Contoh Implementasi
- Dari `SplashScreen` ke `RegisterScreen`
```
Timer(const Duration(seconds: 5), () {  
  Navigator.pushReplacement(  
    context,  
    MaterialPageRoute(builder: (context) => const RegisterScreen()),  
  );  
});  
```
## 4. Package 
- Menambahkan Package di `pubspec.yaml`
- Menjalankan perintah
```
flutter pub get
```
- Menggunakan package dalam kode
```
import 'package:lottie/lottie.dart';
import 'package:gap/gap.dart';
```
