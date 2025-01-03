import "package:flutter/material.dart";
import "package:pbp_django_auth/pbp_django_auth.dart";
import "package:provider/provider.dart";
import "package:toko_barang_gak_guna_mobile/screens/item_entry_form.dart";
import "package:toko_barang_gak_guna_mobile/screens/list_item_entry.dart";
import "package:toko_barang_gak_guna_mobile/screens/login.dart";
class ItemHomepage {
  final String name;
  final IconData icon;
  final Color color; // Add a color property

  ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Material(
      color: item.color, // Use the color from the item
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () async {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!")),
            );
              if (item.name == "Tambah Produk") {
                Navigator.push(context,MaterialPageRoute
                (builder: (context) => const ItemEntryFormPage()));
              }
              else if (item.name == "Lihat Produk") {
                Navigator.push(context,
                MaterialPageRoute(
                builder: (context) => const ItemEntryPage()
        ),
    );
}
else if (item.name == "Logout") {
    final response = await request.logout(
        // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
        "http://127.0.0.1:8000/auth/logout/");
    String message = response["message"];
    if (context.mounted) {
        if (response['status']) {
            String uname = response["username"];
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("$message Sampai jumpa, $uname."),
            ));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
            );
        } else {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(message),
                ),
            );
        }
    }
}
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: item.color == Colors.white ? Colors.black : Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: item.color == Colors.white ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
