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
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Image.asset('lib/assets/s450d.jpeg' ,width: 100,height: 100,) , 
            Row(
              children: [
                CircularImage()
              ],
            )
          ],
        ),
      ),
    );
  }
}


class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Oman");
  }
}