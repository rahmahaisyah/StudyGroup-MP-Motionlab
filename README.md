# Belajar Version Control dengan Git
Branch ini berisi pembelajaran Git yang saya lakukan di minggu-0 study grup motion lab, termasuk penggunaan perintah dasar Git, manajemen branch, dan cara melakukan pull request serta merge, git reset, dan menggunakan SHH.
## 1. Inisialisasi Repository
- Membuat repository lokal dengan perintah:
```bash
git init
git add .
git commit -m "<pesan commit>"
```
- Menambahkan remote repository menggunakan HTTPS:
```bash
git remote add origin https://github.com/rahmahaisyah/StudyGroup-MP-Motionlab.git
```
## 2. Manajemen Branch
- Mengganti branch default dari master ke main:
```bash
git branch -M main
```
- Membuat branch baru untuk pengembangan fitur yang terpisah
- Menggunakan git branch dan git checkout untuk berpindah antar branch
- Membuat branch baru dan dan bekerja di branch a
```bash
git branch a
git checkout a
```
- Melihat branch yang sedang aktive digunakan yang ditandai dengan *
```bash
git branch
```
## 3. Push dan sinkronisasi
- push branch main ke GitHub:
```bash
git push -u origin main
```
- Push branch baru ke remote dengan mengatur upstream:
```bash
git push --set-upstream origin a
```
## 4. Merge Pull Request
- Memahami cara membuat pull request di GitHub untuk menggabungkan branch
- Membuat pull request di GitHub untuk menggabungkan branch a ke branch main
- Merge dilakukan melalui GitHub yang membantu melacak perubahan dan kontribusi, terlihat dari log berikut:
```bash
Merge pull request #1 from rahmahaisyah/a
```
## 5. Menggunakan git reset
- git reset digunakan untuk membatalkan perubahan yang telah dilakukan pada repository, baik itu commit atau perubahan di staging area.
### Tipe-Tipe git reset:
  1. git reset --soft <commit>
      Membatalkan commit tertentu dan memindahkan pointer HEAD ke commit yang ditunjuk, namun perubahan akan tetap berada di staging area untuk dapat dikomit ulang.
     ```bash
     git reset --soft <commit_hash>
     ```
  2. git reset --mixed <commit>
      Membatalkan commit dan perubahan dari staging area, tetapi perubahan tetap ada di working directory. Ini adalah reset default (tanpa opsi apa pun).
     ```bash
     git reset --mixed <commit_hash>
     ```
  3. git reset --hard <commit>
     Membatalkan commit dan menghapus semua perubahan di staging area serta working directory. Ini akan mengembalikan repository ke kondisi commit yang ditunjuk, jadi perubahan yang belum di-commit akan hilang.
     ```bash
     git reset --hard <commit_hash>
     ```
## 6. Menggunakan SHH
- Membuat SSH key dan menambahkannya ke akun GitHub untuk autentikasi tanpa memasukkan username/password:
```bash
ssh-keygen -t rsa -b 4096 -C "rahmahasyh@gmail.com"
```
-Tambahkan SSH key ke akun GitHub:
```bash
cat ~/.ssh/id_rsa.pub
```
- Mengubah remote repository dari HTTPS ke SHH:
```bash
git remote set-url origin git@github.com:rahmahaisyah/StudyGroup-MP-Motionlab.git
```
- Push dan Pull Menggunakan SSH
```bash
git push
git pull
```
