# TONOPEDIA MOBILE

## Tugas 7 PBP 2024/2025
1. **Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.**

    **Jawab:**

    Stateless Widget adalah widget yang tidak memiliki state dan tidak dapat berubah oleh aksi atau perilaku internal. Widget ini hanya dapat berubah dari kejadian eksternal di *parent* widgetnya. Sementara, Stateful Widget adalah widget yang dapat berubah secara dinamis selama *lifetime* nya.

2. **Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.**

    **Jawab:**
    - **MaterialApp:** Widget dasar untuk aplikasi Flutter yang menyediakan konfigurasi tema, navigasi, dan home untuk aplikasi.

    - **Scaffold:** Memberikan struktur dasar halaman dengan AppBar dan Body serta menyediakan layout dasar untuk sebuah halaman termasuk fitur seperti AppBar, Drawer, dan BottomNavigationBar.

    - **AppBar:** Menyediakan baris di bagian atas halaman yang biasanya berisi judul dan tindakan lainnya seperti tombol.

    - **Padding:** Menambahkan ruang di sekitar widget dan memastikan konten tidak mepet dengan tepi layar.

    - **Column:** Menyusun widget secara vertikal dari atas ke bawah.

    - **Row:** Menyusun widget secara horizontal dari kiri ke kanan.

    - **InfoCard (Custom StatelessWidget):** Menampilkan informasi dalam format kartu dengan judul dan konten.

    - **GridView.builder:** Menampilkan daftar widget dalam format grid dengan jumlah kolom tetap dan menggunakan builder untuk membuat widget secara dinamis berdasarkan itemCount.

    - **SliverGridDelegateWithFixedCrossAxisCount:** Menentukan jumlah kolom dan jarak antar item dalam grid.
    
    - **Card:** Menampilkan konten dengan latar belakang berisi dan memiliki bayangan untuk memberikan efek mengambang.

    - **Text:** Menampilkan teks dalam aplikasi dengan berbagai gaya seperti tebal dan ukuran tertentu.

    - **SizedBox:** Memberikan jarak vertikal atau horizontal antar widget.

    - **Material:** Menentukan latar belakang, warna, dan efek material pada widget, seperti efek ripples saat ditekan.

    - **InkWell:** Menyediakan respons sentuhan dengan animasi efek ripples. Digunakan untuk menangani interaksi pengguna seperti klik atau tap.

    - **Container:** Sebuah widget fleksibel yang dapat mengatur padding, margin, warna latar, ukuran, dan dekorasi.
    
    - **Icon:** Menampilkan ikon di dalam aplikasi.

    - **SnackBar:** Menampilkan pesan sementara di bagian bawah layar, biasanya sebagai umpan balik atas tindakan pengguna.


3. **Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

    **Jawab:**
    Fungsi `setState()` pada Flutter digunakan untuk memberi tahu framework bahwa ada perubahan pada state sebuah widget. Saat `setState()` dipanggil, Flutter akan merender ulang bagian widget yang terdampak agar tampilan menyesuaikan dengan perubahan data. Fungsi `setState()` hanya bekerja pada **Stateful Widget**. Pada code, dapat dilihat bahwa tidak terdapat fungsi `setState()` karena setiap widget yang digunakan merupakan **Stateless Widget**. Dan semua data, seperti nama, npm, dan kelas dinyatakan dalam tipe variabel final yang diinisialisasi sekali saat pembuatan widget dan tidak berubah sepanjang waktu.
    

4. **Jelaskan perbedaan antara `const` dengan `final`.**

    **Jawab:**

    `final` digunakan untuk mendeklarasikan suatu variabel yang hanya dapat diinisiasi satu kali, tetapi nilai inisiasinya dapat ditentukan saat *runtime*. Selain itu, setelah diberikan nilai, variabel `final` tidak dapat diubah. Sementara, `const` digunakan untuk mendeklarasikan variabel yang bersifat *compile-time constant*, yaitu nilainya harus diketahui saat kompilasi dan tidak akan berubah (*immutable*).


5. **Jelaskan bagaimana cara kamu mengimplementasikan _*checklist-checklist*_ di atas.**

    **Jawab:**

    i. Generate proyek flutter dengan command `flutter create tonopedia_mobile`. 

    ii. Membuat file baru bernama `menu.dart` pada direktori `tonopedia_mobile/lib` dan menambahkan kode berikut `import 'package:flutter/material.dart';`.

    iii. Memindahkan `class MyHomepage` dan `class _MyHomePageState` dari file `main.dart` ke `menu.dart`.

    iv. Import package berikut pada `main.dart`.
    ```
    import 'package:tonopedia_mobile/menu.dart';
    ```

    v. Mengubah kode pada `main.dart` untuk mengubah tema warna aplikasi.
    ```
    colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.lightGreen,
          ).copyWith(secondary: Colors.lightGreen[900]),
    ```

    vi. Mengubah sifat widget halaman menu menjadi stateless​.
    
    vii. Membuat card sederhana yang berisi NPM, Nama, dan Kelas dengan menambahkan variabel `final` ke `class MyHomePage` serta membuat `class InfoCard`.

    viii. Membuat button card dengan menambahkan list items button yang diinginkan ke `class MyHomePage` dan membuat `class ItemHomePage`.

    ix. Mengintegrasikan `InfoCard` dan `ItemCard` untuk ditampilkan di `MyHomePage`.









