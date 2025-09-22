import 'package:flutter/material.dart';
import 'main.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  void resetOrders() {
    setState(() {
      for (var item in menuItems) {
        item.quantity = 0;
      }
    });
  }

  int get totalQuantity {
    return menuItems.fold(0, (sum, item) => sum + item.quantity);
  }

  Widget buildCategory(String title, List<MenuItem> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        ...items.map((item) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.quantity.toString(),
                    style: const TextStyle(fontSize: 16)),
                Expanded(
                  child: Text(item.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 16)),
                ),
                Text("Rp. ${item.price}",
                    style: const TextStyle(fontSize: 16)),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(36, 36),
                          shape: const CircleBorder(),
                          padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          if (item.quantity > 0) item.quantity--;
                        });
                      },
                      child: const Text("-"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(36, 36),
                          shape: const CircleBorder(),
                          padding: EdgeInsets.zero),
                      onPressed: () {
                        setState(() {
                          item.quantity++;
                        });
                      },
                      child: const Text("+"),
                    ),
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // Ambil 5 pertama untuk Makanan, 5 berikutnya untuk Minuman
    var makanan = menuItems.sublist(0, 5);
    var minuman = menuItems.sublist(5, 10);

    return Scaffold(
      appBar: AppBar(title: const Text("MENUS")),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildCategory("Makanan", makanan),
                  buildCategory("Minuman", minuman),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Jumlah Pesanan: $totalQuantity",
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/transaction'),
                child: const Text("Transaction")),
            ElevatedButton(onPressed: resetOrders, child: const Text("Reset")),
          ],
        ),
      ),
    );
  }
}