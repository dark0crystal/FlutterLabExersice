import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({super.key});

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  void initState() {
    super.initState();

    // Delay and exit
    Future.delayed(const Duration(seconds: 2), () {
      exit(0); // Completely closes the app
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "Logging out...!",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
