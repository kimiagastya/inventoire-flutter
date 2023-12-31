import 'package:flutter/material.dart';
import 'package:inventoire/screens/list_product.dart';
import 'package:inventoire/screens/menu.dart';
import 'package:inventoire/screens/shoplist_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Column(
              children: [
                Text(
                  'Supercar Dealership',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text("We sell high end rocketships", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal,),
                  textAlign: TextAlign.center, // To add center alignment
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
            leading: const Icon(Icons.add_shopping_cart),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShopFormPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_basket),
            title: const Text('Lihat Item'),
            onTap: () {
            // Route menu ke halaman produk
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProductPage()));
            },
          ),
        ],
      ),
    );
  }
}