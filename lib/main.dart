import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'menu_page.dart';
import 'transaction_page.dart';

class User {
  String fullname;
  String username;
  String email;
  String password;

  User(this.fullname, this.username, this.email, this.password);
}

List<User> users = [];
String? loggedInUser;

class MenuItem {
  String name;
  int price;
  int quantity;

  MenuItem(this.name, this.price, {this.quantity = 0});
}

List<MenuItem> menuItems = [
  MenuItem("Nasi Goreng", 15000),
  MenuItem("Mie Goreng", 12000),
  MenuItem("Ayam Geprek", 18000),
  MenuItem("Sate Ayam", 20000),
  MenuItem("Bakso", 15000),

  // Minuman
  MenuItem("Es Teh Manis", 5000),
  MenuItem("Es Jeruk", 7000),
  MenuItem("Kopi Hitam", 8000),
  MenuItem("Cappuccino", 12000),
  MenuItem("Jus Alpukat", 15000),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Order App',
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/menu': (context) => const MenuPage(),
        '/transaction': (context) => const TransactionPage(),
      },
    );
  }
}
