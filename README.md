# Pengenalan Firebase
Firebase adalah platform pengembangan aplikasi dari Google yang menyediakan layanan backend seperti penyimpanan data, autentikasi, dan analisis. Firebase sangat cocok untuk integrasi dengan Flutter agar aplikasi memiliki fitur backend yang cepat dan efisien.

## Firestore (Cloud Database Firebase)
Firestore adalah layanan database cloud yang menyimpan dan mengelola data secara real-time. Perubahan data tersinkronisasi otomatis di semua perangkat yang terhubung. Firestore mendukung berbagai platform aplikasi.

### Firestore Fundamentals
- **Collection**: Mirip tabel dalam database relasional, menyimpan sekelompok data terkait.
- **Document**: Menyimpan data dengan ID unik dalam Firestore.
- **Tipe Data**: String, Boolean, Timestamp, Number, Map, Array, Null, Geopoint, Reference.

## Stream & StreamBuilder dalam Flutter
- **Stream**: Fungsi asynchronous yang mengirimkan data secara berurutan berdasarkan event, berbeda dengan Future yang hanya mengembalikan satu data.
- **StreamBuilder**: Widget Flutter yang mendengarkan event dari stream dan membangun UI berdasarkan snapshot terbaru.

## Integrasi Firestore ke Flutter
### Langkah-langkah:
1. **Buat Firebase Project**
2. **Buat Firestore Database**
3. **Integrasikan Firebase ke Flutter**
4. **Install Firebase CLI**
5. **Install FlutterFire CLI**
6. **Tambahkan `firebase_core` ke aplikasi Flutter**
7. **Tambahkan Firestore Service ke Flutter**
