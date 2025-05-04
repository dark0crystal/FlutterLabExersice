import 'package:flutter/material.dart';
import 'package:lab_exersice/pages/login.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab Exercise',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(), // Start at login
    );
  }
}
