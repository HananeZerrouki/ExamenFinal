import 'package:flutter/material.dart';
import '../widgets/bottomNavigation.dart'; // Chemin vers ta page principale

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const  AppBottomNav(currentIndex: 0)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Connexion",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => (value == null || value.isEmpty) ? "Veuillez entrer votre email" : null,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: "Mot de passe",
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) => (value == null || value.isEmpty) ? "Veuillez entrer votre mot de passe" : null,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _login,
                    child: const Text("Se connecter"),
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
