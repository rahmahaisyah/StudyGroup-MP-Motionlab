# Convert Project ke GetX Pattern menggunakan Get CLI

## 1. Mengubah UI menjadi Stateless dan Memindahkan Logic ke Controller
Dalam pola GetX, semua UI sebaiknya dibuat **StatelessWidget**, dan semua logika aplikasi dipindahkan ke dalam **Controller** untuk meningkatkan modularitas dan keterbacaan kode.

---

## 2. Bindings: Mengelola Dependensi dengan GetX
Bindings adalah fitur GetX yang digunakan untuk menginisialisasi dan mengelola dependensi seperti controller atau service.

### Mengapa Menggunakan Bindings?
- **Efisiensi Memori**: Dengan `lazyPut`, controller hanya akan dimuat saat diperlukan dan akan dihapus dari memori saat tidak digunakan.
- **Organisasi Kode**: Memisahkan inisialisasi dependensi dari logika UI membuat kode lebih terstruktur.

### Cara Kerja Bindings
**LazyPut**: Menginisialisasi controller dengan disposisi otomatis dari memori.

```dart
class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyController>(() => MyController());
  }
}
```

---

## 3. Model: Representasi Data
Model digunakan untuk menyimpan dan memproses data. Dalam GetX, model biasanya dikelola di dalam controller.

### Contoh Model:
```dart
class User {
  String name;
  int age;

  User({required this.name, required this.age});
}
```
Model ini dapat digunakan dalam controller untuk mengolah data yang diperlukan aplikasi.

---

## 4. SetState vs GetX

| **Metode** | **Kelebihan** | **Kekurangan** |
|------------|--------------|---------------|
| `setState()` | Mudah digunakan | Memicu rebuild seluruh widget |
| `GetX` | Pembaruan otomatis, lebih efisien | Membutuhkan pemahaman reactive programming |

### Contoh SetState:
```dart
setState(() {
  counter++;
});
```

### Contoh GetX:
```dart
Obx(() => Text(controller.counter.toString()));
```

---

## 5. GetX CLI
GetX memiliki Command Line Interface (CLI) untuk mempermudah pengembangan aplikasi Flutter.

### **Fitur Utama GetX CLI:**
- Membuat file controller, model, dan view secara otomatis.
- Mengelola struktur folder proyek lebih rapi.

### **Instalasi GetX CLI:**
```sh
pub global activate get_cli
```

### **Contoh Penggunaan CLI:**

- **Membuat proyek baru:**
```sh
get create project
```

- **Menambahkan page baru:**
```sh
get create page:home
```

---

## 6. Konsep Utama dalam GetX

### **1. State Management**
GetX menggunakan **Reactive Programming** untuk state management. Dengan menggunakan **Rx (reactive) variabel**, aplikasi akan secara otomatis merespons perubahan data tanpa perlu `setState()`.

### **2. Controller**
GetX memperkenalkan konsep **Controller** untuk memisahkan logika dari UI. Controller bertanggung jawab untuk mengelola state dan fungsi aplikasi.

### **3. Routing**
GetX menyediakan cara yang sangat sederhana untuk menangani routing dan navigasi.

- **Navigasi ke halaman lain:**
```dart
Get.to(NextPage());
```

- **Kembali ke halaman sebelumnya:**
```dart
Get.back();
```

- **Ganti halaman tanpa bisa kembali:**
```dart
Get.off(NextPage());
```

### **4. Dependency Injection**
GetX mendukung **Dependency Injection**, yang memungkinkan kita untuk mengelola instansi kelas dan menyediakan mereka ke berbagai bagian aplikasi.

### **5. GetBuilder**
GetBuilder adalah widget yang digunakan untuk membangun UI berdasarkan perubahan pada controller. Biasanya digunakan jika kita ingin merender ulang widget tanpa menggunakan reactive state seperti `obs`.
