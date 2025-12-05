import 'package:flutter/material.dart';
import 'connexion.dart'; // ✔️ importe ta page de connexion


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mon App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(), // <--- nom exact
    );
  }
}

