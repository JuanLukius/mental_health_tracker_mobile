import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:toko_barang_gak_guna_mobile/widgets/item_card.dart';
import 'package:toko_barang_gak_guna_mobile/widgets/left_drawer.dart';
class MyHomePage extends StatelessWidget {
  final String npm = '2306216075'; // NPM
  final String name = 'Juan Lukius Barnaby'; // Nama
  final String className = 'PBP F'; // Kelas

  MyHomePage({super.key});

  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.mood, Colors.blue),
    ItemHomepage("Tambah Produk", Icons.add, Colors.white),
    ItemHomepage("Logout", Icons.logout, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Toko Barang Gak Guna',
=======
import 'package:mental_health_tracker/screens/moodentry_form.dart';
import 'package:mental_health_tracker/widgets/left_drawer.dart';
class MyHomePage extends StatelessWidget {
    final String npm = '2306216075'; // NPM
    final String name = 'Juan Lukius Barnaby'; // Nama
    final String className = 'PBP F'; // Kelas
    MyHomePage({super.key});
     final List<ItemHomepage> items = [
         ItemHomepage("Lihat Mood", Icons.mood),
         ItemHomepage("Tambah Mood", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];

    @override
    Widget build(BuildContext context) {
    // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
    return Scaffold(
      // AppBar adalah bagian atas halaman yang menampilkan judul.
      appBar: AppBar(
           iconTheme: const IconThemeData(color: Colors.white),

        // Judul aplikasi "Mental Health Tracker" dengan teks putih dan tebal.
        title: const Text(
          'Mental Health Tracker',
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
<<<<<<< HEAD
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm, color: Colors.blue),
                InfoCard(title: 'Name', content: name, color: Colors.white),
                InfoCard(title: 'Class', content: className, color: Colors.red),
              ],
            ),
            const SizedBox(height: 16.0),
            Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Toko Barang Gak Guna',
=======
        // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      // Body halaman dengan padding di sekelilingnya.
      drawer: const LeftDrawer(),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // Menyusun widget secara vertikal dalam sebuah kolom.
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Row untuk menampilkan 3 InfoCard secara horizontal.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(title: 'NPM', content: npm),
                InfoCard(title: 'Name', content: name),
                InfoCard(title: 'Class', content: className),
              ],
            ),

            // Memberikan jarak vertikal 16 unit.
            const SizedBox(height: 16.0),

            // Menempatkan widget berikutnya di tengah halaman.
            Center(
              child: Column(
                // Menyusun teks dan grid item secara vertikal.

                children: [
                  // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                  const Padding(
                    padding: EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Welcome to Mental Health Tracker',
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
<<<<<<< HEAD
=======

                  // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
                  GridView.count(
                    primary: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
<<<<<<< HEAD
                    shrinkWrap: true,
=======
                    // Agar grid menyesuaikan tinggi kontennya.
                    shrinkWrap: true,

                    // Menampilkan ItemCard untuk setiap item dalam list items.
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
                    children: items.map((ItemHomepage item) {
                      return ItemCard(item);
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
<<<<<<< HEAD
  final String title;
  final String content;
  final Color color;

  const InfoCard({
    super.key,
    required this.title,
    required this.content,
    required this.color,
  });
=======
  // Kartu informasi yang menampilkan title dan content.

  final String title;  // Judul kartu.
  final String content;  // Isi kartu.

  const InfoCard({super.key, required this.title, required this.content});
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec

  @override
  Widget build(BuildContext context) {
    return Card(
<<<<<<< HEAD
      elevation: 2.0,
      color: color,
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
=======
      // Membuat kotak kartu dengan bayangan dibawahnya.
      elevation: 2.0,
      child: Container(
        // Mengatur ukuran dan jarak di dalam kartu.
        width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
        padding: const EdgeInsets.all(16.0),
        // Menyusun title dan content secara vertikal.
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
        child: Column(
          children: [
            Text(
              title,
<<<<<<< HEAD
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color == Colors.white ? Colors.black : Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: TextStyle(
                color: color == Colors.white ? Colors.black : Colors.white,
              ),
            ),
=======
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(content),
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
          ],
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
  
}
class ItemHomepage {
     final String name;
     final IconData icon;

     ItemHomepage(this.name, this.icon);
 }
class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
              if (item.name == "Tambah Mood") {
                Navigator.push(context,MaterialPageRoute
                (builder: (context) => const MoodEntryFormPage()));
              }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}

>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
