import 'package:flutter/material.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  String errorMsg = "";

  void login() {
    String uname = usernameCtrl.text;
    String pass = passwordCtrl.text;

    var user = users.firstWhere(
      (u) => u.username == uname && u.password == pass,
      orElse: () => User("", "", "", ""),
    );

    if (user.username.isNotEmpty) {
      setState(() {
        loggedInUser = uname;
      });
      Navigator.pushReplacementNamed(context, '/menu');
    } else {
      setState(() {
        errorMsg = "Username atau password salah!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag, size: 80, color: Colors.blue),
            const Text("WELCOME BACK!", style: TextStyle(fontSize: 22)),
            TextField(controller: usernameCtrl, decoration: const InputDecoration(labelText: "Username")),
            TextField(controller: passwordCtrl, obscureText: true, decoration: const InputDecoration(labelText: "Password")),
            const SizedBox(height: 10),
            Text(errorMsg, style: const TextStyle(color: Colors.red)),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: login, child: const Text("Login")),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/register'),
              child: const Text("Create Account"),
            ),
          ],
        ),
      ),
    );
  }
}
