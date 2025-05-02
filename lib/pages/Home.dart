import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove AppBar if you want full image (optional)
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/s450d.jpeg',
              fit: BoxFit.cover, // Ensures the image covers the screen
            ),
          ),
          const Positioned(
            top: 120,
            left: 20,
            child: CircularImage(),
          )
        ],
      ),
    );
  }
}

class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "",
      style: TextStyle(
        fontSize: 24,
        color: Colors.white,
      ),
    );
  }
}
