import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:toko_barang_gak_guna_mobile/screens/list_item_entry.dart';
import 'package:toko_barang_gak_guna_mobile/screens/menu.dart';
import 'package:toko_barang_gak_guna_mobile/screens/item_entry_form.dart';
=======
import 'package:mental_health_tracker/screens/list_moodentry.dart';
import 'package:mental_health_tracker/screens/menu.dart';
import 'package:mental_health_tracker/screens/moodentry_form.dart';
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
           decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: const Column(
      children: [
        Text(
<<<<<<< HEAD
          'Toko Barang Gak Guna',
=======
          'Mental Health Tracker',
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
<<<<<<< HEAD
          "Ayo beli barang tidak berguna ini!",
=======
          "Ayo jaga kesehatan mentalmu setiap hari disini!",
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
          textAlign: TextAlign.center,
          style : TextStyle(
            fontSize : 15,
            fontWeight : FontWeight.normal,
            color : Colors.white,
          
          )
        ),
      ],
    ),
          ),
         ListTile(
    leading: const Icon(Icons.home_outlined),
    title: const Text('Halaman Utama'),
    // Bagian redirection ke MyHomePage
    onTap: () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.mood),
<<<<<<< HEAD
    title: const Text('Tambah Item'),
=======
    title: const Text('Tambah Mood'),
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
    // Bagian redirection ke MoodEntryFormPage
    onTap: () {
   Navigator.pushReplacement(
        context,
        MaterialPageRoute(
<<<<<<< HEAD
            builder: (context) => ItemEntryFormPage(),
=======
            builder: (context) => MoodEntryFormPage(),
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
        ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.add_reaction_rounded),
<<<<<<< HEAD
    title: const Text('Daftar Produk'),
=======
    title: const Text('Daftar Mood'),
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
    onTap: () {
        // Route menu ke halaman mood
        Navigator.push(
            context,
<<<<<<< HEAD
            MaterialPageRoute(builder: (context) => const ItemEntryPage()),
=======
            MaterialPageRoute(builder: (context) => const MoodEntryPage()),
>>>>>>> 905425b7d8846a7de936467968ad56d9663cb8ec
        );
    },
),
        ],
      ),
    );
  }
}

