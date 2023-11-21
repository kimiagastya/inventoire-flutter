<h3>Tugas 9</h3>

 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON? <br>
 Ya, jika kita tidak mememerlukan mapping data pada aplikasi kita, maka kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Namun, sebaiknya kita membuat model terlebih dahulu untuk memastikan bahwa data yang diterima oleh aplikasi memiliki tipe data yang tepat dan developer dapat lebih memahami struktur datanya. <br>

 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter. <br>
 CookieRequest berfungsi untuk men-handle HTTP request dengan autentikasi berbasis cookie dan untuk mengatur cookie untuk user session. Instance tersebut perlu dibagikan ke semua komponen agar cookie dapat dipertahankan pada keseluruhan session. <br>

 3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter. <br>
 Pertama, kita perlu membuat model class yang bersesuaian dengan key pada data JSON yang diterima. Selanjutnya, kita melakukan fetch data dari web. Pada tugas ini, data JSON diambil dari url JSON app Django yang sebelumnya telah dibuat. Terakhir, data tersebut ditampilkan di dalam widget. <br>

 4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter. <br>
 Pada halaman LoginPage, user akan memasukkan username serta passwordnya. Kedua atribut tersebut akan dikirim ke method login yang ada di app authentication yang ada pada web Django. Jika username dan password benar, maka method tersebut akan me-return status True dan user dapat masuk ke dalam aplikasi. <br>

 5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing. <br>
 Widget yang digunakan pada tugas sebelumnya yang ditambah dengan: <br>
      1. ElevatedButton: menampilkan tombol yang "elevated" ketika ditekan
      2. TextField: field yang dapat diisi dengan teks oleh user
      3. SizedBox: box yang memiliki ukuran yang konstan 

 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial). <br>
 Pertama, saya membuat app Django baru yang bernama authentication. Pada views.py nya, saya tambahkan method login yang akan digunakan pada login di aplikasi Flutter. Saya menambahkan path yang sesuai pada urls.py di app. Kemudian, saya memasang dependency `django-cors-headers` dan menambahkan beberapa variabel dan setting lainnya pada file settings.py root folder. Selanjutnya, di project Flutter, saya memasang package `provider`, `pbp_django_auth`, dan `http`. Saya juga memodifikasi AndroidManifest.xml agar memperbolehkan akses internet pada aplikasi Flutter. Kemudian, saya memasang CookieRequest pada root widget agar cookie terimplementasi pada setiap page app. Lalu, saya membuat halaman login pada file baru yang bernama login.dart. Untuk menghubungkan data dari Django, saya membuat model dart dengan bantuan tool Quicktype. Selanjutnya saya fetch data JSON dari URL web Django. Untuk form add item, saya membuat method baru pada Django untuk dapat membuat item baru dari aplikasi Flutter yang dihubungkan pada form di Flutter. Untuk logout, saya menambahkan method `logout` pada views.py di app authentication Django yang saya hubungkan ke tombol logout pada home page. Untuk melihat detail item, saya membuat page baru yang bernama DetailPage yang mendapatkan detail item yang diklik pada halaman daftar item. DetailPage akan mendapatkan semua atributnya dari data yang dikirim dari daftar item.
 
<h3>Tugas 8</h3>

 1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat! <br>
 Navigator.push() menambahkan suatu route ke dalam stack route, sehingga route yang baru saja ditambahkan akan muncul dan ditampilkan kepada pengguna. Navigator.pushReplacement() menghapus route yang sedang ditampilkan kepada pengguna dan menggantinya dengan suatu route. Meskipun sama-sama mengubah tampilan yang dilihat oleh user, tetapi method push() tidak menghapus route sehingga user bisa kembali ke route sebelumnya, sementara method pushReplacement() menghapus route sehingga user tidak bisa kembali ke route sebelumnya. <br>

 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing! <br>
    1. Container: widget yang dapat berisi widget lain sebagai child nya. Digunakan sebagai container general-purpose untuk widget lainnya.
    2. Column: layout sederhana yang mengatur children secara vertikal. Digunakan untuk megantur elemen secara vertikal.
    3. Row: layout sederhana yang mengatur children secara horizontal. Digunakan untuk megantur elemen secara horizontal.
    4. ListView: layout untuk membuat elemen children menjadi scrollable. Digunakan untuk menampilkan list content yang scrollable.
    5. Stack: layout yang menumpuk (stacks) childrennya. Digunakan ketika ingin meletakkan widget di atas satu sama lain.
    6. Expanded dan Flexible: untuk mengatur banyak space yang diambil oleh children dalam kolom atau baris. Digunakan untuk memberikan fleksibilitas pada widget dalam column atau row.

 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut! <br>
 Elemen input yang digunakan hanya TextFormField karena elemen tersebut dapat menerima input text dari user yang selanjutnya dapat divalidasi.<br>

 4. Bagaimana penerapan clean architecture pada aplikasi Flutter? <br>
    Menerapkan tiga layer utama yang saling independen satu sama lain, yaitu: <br>
      1. Presentation Layer (UI): menyimpan komponen UI seperti widget, screen, dan views.
      2. Domain Layer (Business Logic): meyimpan use case, entitas, serta business logic utama aplikasi.
      3. Data Layer: bertanggung jawab untuk menerima dan menyimpan data.

 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial) <br>
    Pertama saya membuat halaman form dengan nama `shoplist_form.dart`. Kemudian di dalamnya saya membuat class ShopFormPage. Ketiga field input text saya letakkan di dalam SingleChildScrollView() agar menjadi scrollable. Saya memberikan label untuk masing-masing inputnya serta diberikan fungsi validasi untuk memastikan elemen input tidak kosong dan input amount hanya menerima input berupa angka saja. Selanjutnya dibuat tombol save yang akan menunjukkan pop up detail item yang berhasil disimpan sesuai dengan input form sebelumnya. <br>

    Untuk menavigasi tombol `Tambah Item` ke form, saya menambahkan conditionals jika tombol yang ditekan adalah Tambah Item, maka akan diarahkan ke ShopFormPage:
    ```
    if (item.name == "Tambah Item") {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ShopFormPage()));
    }
    ```
    Terakhir saya membuat drawer dengan membuat `left_drawer.dart` yang ditambahkan dengan dua opsi, yaitu Halaman Utama dan Tambah Item dengan masing-masing navigatornya ke halaman yang diinginkan.

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