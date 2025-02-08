# Working with Local Storage in Flutter

## Local Storage
Local Storage adalah metode penyimpanan data di perangkat pengguna secara permanen. Ini berguna untuk aplikasi yang:
- Tidak memerlukan koneksi internet terus-menerus
- Menyimpan data pengguna atau pengaturan aplikasi
- Mempertahankan data meskipun aplikasi ditutup atau di-restart

## Implementasi Local Storage dalam Flutter
Flutter menyediakan beberapa metode untuk menyimpan data lokal, seperti **Hive**, **SQLite**, dan **SharedPreferences**. Berikut adalah perbandingan dan cara menggunakannya:

### 1. Hive - Fast & Lightweight Database
Hive adalah database ringan berbasis key-value yang cepat dan tidak memerlukan koneksi internet.

#### Keunggulan:
✅ Cepat dan ringan
✅ Menyimpan data dalam format JSON atau Object Dart
✅ Tidak memerlukan setup database yang rumit

#### Konsep **Box di Hive**:
- **Box** adalah tempat penyimpanan data dalam bentuk key-value
- **Setiap Box memiliki nama unik** untuk mengakses data
- **Operasi penyimpanan bersifat asinkron**, sehingga memerlukan `async/await`

#### Contoh Implementasi Hive:
```dart
import 'package:hive/hive.dart';

void main() async {
  var box = await Hive.openBox('userBox');
  box.put('isLoggedIn', true);
  print(box.get('isLoggedIn')); // Output: true
}
```

### 2. SQLite - Relational Database
SQLite adalah database berbasis tabel yang cocok untuk data terstruktur.

#### Keunggulan:
✅ SQL-based, cocok untuk operasi kompleks
✅ Relational, memungkinkan hubungan antar data
✅ Cocok untuk aplikasi yang membutuhkan struktur data yang lebih kompleks

#### Contoh Implementasi SQLite dengan `sqflite`:
```dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<void> saveUserData() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'user_database.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE users(id INTEGER PRIMARY KEY, name TEXT)",
      );
    },
    version: 1,
  );

  final db = await database;
  await db.insert('users', {'id': 1, 'name': 'Rahmah'});
}
```

### 3. SharedPreferences - Simple Key-Value Storage
SharedPreferences digunakan untuk menyimpan data kecil, seperti status login atau preferensi pengguna.

#### Keunggulan:
✅ Mudah digunakan
✅ Tidak memerlukan setup kompleks
✅ Ideal untuk menyimpan pengaturan aplikasi

#### Contoh Implementasi SharedPreferences:
```dart
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveLoginStatus(bool isLoggedIn) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setBool('isLoggedIn', isLoggedIn);
}
```

## Studi Kasus: Implementasi dalam Aplikasi
### 1. **Menyimpan Status Login**
- Gunakan `SharedPreferences` untuk menyimpan status login pengguna
- Saat aplikasi dijalankan kembali, periksa apakah pengguna sudah login
- Jika sudah login, arahkan langsung ke **Dashboard**

### 2. **Menyimpan Produk Favorit**
- Gunakan `Hive` untuk menyimpan daftar produk favorit dalam bentuk JSON atau objek Dart

### 3. **Tombol Logout di Profile Page**
- Gunakan `SharedPreferences` atau `Hive` untuk menghapus status login pengguna saat logout

### 4. **Menampilkan Data User di Profile Page**
- Gunakan `Hive` atau `SQLite` untuk menyimpan dan mengambil data pengguna
