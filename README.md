# State Management

### Pengertian
State management adalah proses pengelolaan state dalam suatu aplikasi. **State** merepresentasikan data atau informasi yang digunakan untuk mencerminkan kondisi aplikasi pada suatu waktu. Dalam pengembangan aplikasi, state mencakup:
- Input pengguna
- Data dari server
- Elemen UI yang sedang ditampilkan
***

### Model View Controller (MVC)
Pola desain MVC memisahkan aplikasi menjadi tiga komponen utama:
1. **Model** - Mengelola data.
2. **View** - Menampilkan UI.
3. **Controller** - Menghubungkan Model dan View, menangani logika aplikasi.
***

### GetX (State Management)
GetX adalah metode sederhana untuk mengelola state dengan dua pendekatan utama:

#### 1. GetX Reactive
Menggunakan **Rx (Reactive Data Type)** untuk langsung mengamati perubahan dalam variabel.

**Format dan Contoh:**
```dart
RxInt count = 0.obs;
RxString message = ''.obs;
RxList<String> items = <String>[].obs; // List Reactive
```

**Penggunaan dalam Widget:**
```dart
Obx(() => Text("Nilai: \${controller.count}"));
```

#### 2. GetX Simple
Menggunakan tipe data biasa tanpa RxType, tetapi memerlukan **GetxController** dan metode `update()` untuk memperbarui UI.

**Contoh:**
```dart
class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update(); // Memperbarui UI
  }
}
```
***

### Cara Memastikan Setiap Produk Diperbarui Secara Independen
#### 1. Menggunakan `Obx` secara Lokal
Dalam kode `CartPage`, kita menggunakan `Obx(() => CartProduct(...))` sehingga perubahan hanya terjadi di komponen terkait.

#### 2. Menggunakan Reactive Map `RxMap<int, int>` (`quantities.obs`)
Map ini hanya memperbarui nilai untuk produk tertentu saat tombol "+" atau "-" ditekan, sehingga produk lain tidak terpengaruh.
***

### Snippet Visual Studio Code (VSCode)
Untuk mempercepat pengembangan, gunakan snippet berikut di VS Code:

```json
"GetX Controller Template": {
  "prefix": "getxctrl",
  "body": [
    "import 'package:get/get.dart';",
    "",
    "class ${1:ControllerName} extends GetxController {",
    "  var ${2:count} = 0.obs;",
    "",
    "  void ${3:increment}() {",
    "    $2++;",
    "  }",
    "}"
  ],
  "description": "Template untuk GetX Controller"
}
```

Ketik `getxctrl` untuk otomatis menghasilkan controller baru.

