import 'package:flutter/material.dart';

import '../models/item.dart';
import 'package:flutter_navigasi_rute/pages/home_page.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Shopping List-2041720091-Kevin Natanael Wijaya'),
        ),
        body: Center(
            child: SizedBox(
          height: 250,
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border:
                  Border.all(width: 5, color: Color.fromARGB(255, 0, 211, 46)),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Detail Barang :   ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 83, 83, 83),
                      fontSize: 30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Nama Barang : "),
                    Text(itemArgs.name.toString()),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Harga : Rp."),
                    Text(itemArgs.price.toString()),
                  ],
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
