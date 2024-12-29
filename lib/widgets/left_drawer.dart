import 'package:flutter/material.dart';
import 'package:toko_barang_gak_guna_mobile/screens/list_item_entry.dart';
import 'package:toko_barang_gak_guna_mobile/screens/menu.dart';
import 'package:toko_barang_gak_guna_mobile/screens/item_entry_form.dart';
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
          'Toko Barang Gak Guna',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "Ayo beli barang tidak berguna ini!",
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
    title: const Text('Tambah Item'),
    // Bagian redirection ke MoodEntryFormPage
    onTap: () {
   Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => ItemEntryFormPage(),
        ));
    },
  ),
  ListTile(
    leading: const Icon(Icons.add_reaction_rounded),
    title: const Text('Daftar Produk'),
    onTap: () {
        // Route menu ke halaman mood
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ItemEntryPage()),
        );
    },
),
        ],
      ),
    );
  }
}

