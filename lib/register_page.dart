import 'package:flutter/material.dart';
import 'main.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final fullnameCtrl = TextEditingController();
  final usernameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  void register() {
    users.add(User(
      fullnameCtrl.text,
      usernameCtrl.text,
      emailCtrl.text,
      passwordCtrl.text,
    ));

    Navigator.pushReplacementNamed(context, '/login');
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
            const Text("Create Account", style: TextStyle(fontSize: 22)),
            TextField(controller: fullnameCtrl, decoration: const InputDecoration(labelText: "Fullname")),
            TextField(controller: usernameCtrl, decoration: const InputDecoration(labelText: "Username")),
            TextField(controller: emailCtrl, decoration: const InputDecoration(labelText: "Email")),
            TextField(controller: passwordCtrl, obscureText: true, decoration: const InputDecoration(labelText: "Password")),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: register, child: const Text("Register")),
            TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
              child: const Text("Already have account? Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
