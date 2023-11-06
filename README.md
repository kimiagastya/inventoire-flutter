<h3>Tugas 7</h3>

 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter? <br>
 Stateless widget adalah widget yang tidak akan berubah terhadap interaksi yang terjadi. Stateful widget adalah widget yang akan berubah ketika terjadi interaksi. <br>
 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing. <br>
   1. Scaffold: Widget struktural dasar yang menyediakan kerangka dasar untuk tata letak aplikasi Flutter.
   2. AppBar: Menampilkan appbar, hal semacam header aplikasi yang berisi judul dari aplikasi
   3. SingleChildScrollView: Memungkinkan untuk melakukan scroll konten dalam aplikasi.
   4. Padding: Widget tata letak yang menambahkan ruang sekitar widget child.
   5. Column: Mengatur child widget dengan kolom vertikal.
   6. Text: Menambahkan teks yang tidak dapat diubah.
   7. GridView: Menyusun child widget dalam tata letak grid dengan baris dan kolom.
   8. Material: Widget sebagai guideline Material Design.
   9. InkWell: Memberikan respons visual ketika elemen ditekan, selanjutnya dapat menampilkan snackbar.
   10. Container: Widget tata letak untuk mengatur ruang kontenn.
   11. Icon: Menampilkan icon dalam setiap tombol, seperti tombol checklist, add_shopping_cart, dan logout.

 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial) <br>
 Pertama saya membuat program Flutter baru dengan command `flutter create inventoire`. Selanjutnya, saya membuat file baru yang bernama menu.dart di dalam folder lib di project. Di dalam file tersebut saya melakukan import file main.dart agar bisa mengakses class yang ada di file itu. Hal yang sama juga dilakukan terhadap file main.dart, yaitu men-import file menu.dart. Class MyHomePage dan _MyHomePageState selanjutnya dipindahkan dari main.dart ke menu.dart. <br> <br>

 Setelah melakukan hal di atas, saya membuat class ShopItem yang memiliki atribut name, icon, dan color. Kemudian saya membuat List yang berisi daftar item yang akan ditampilkan di aplikasi dengan menginisiasinya sesuai atributnya masing-masing. Kemudian saya membuat class ShopCard untuk membuat card dari setiap item di atas. Selanjutnya di dalam Scaffold saya memasukkan ketiga item yang telah dibuat dengan layout grid. Di dalam ShopCard, saya menambahkan widget InkWell untuk memberikan respon berupa Snackbar ketika card tiap item ditekan sesuai dengan pesannya masing-masing.