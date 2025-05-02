import 'package:flutter/material.dart';
import 'package:lab_exersice/pages/view_grid.dart';
import 'package:lab_exersice/pages/view_list.dart';
import 'package:lab_exersice/shared/EmailsData.dart';


class Home extends StatelessWidget {
  final String userName = "John Doe";
  final String userEmail = "john@example.com";

  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'lib/assets/s450d.jpeg', // Your background image
              fit: BoxFit.cover,
            ),
          ),
          // User info
          Positioned(
            top: 60,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 5),
                Text(userEmail,
                    style: const TextStyle(fontSize: 16, color: Colors.white70)),
              ],
            ),
          ),
          // 3 circular image buttons
          Positioned(
            top: 200,
            left: 30,
            child: CircularImageButton(
              imagePath: 'lib/assets/list.png',
              title: 'List View',
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ViewListPage(emailList: emailList)));
              },
            ),
          ),
          Positioned(
            top: 200,
            right: 30,
            child: CircularImageButton(
              imagePath: 'lib/assets/grid.png',
              title: 'Grid View',
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ViewGridPage(emailList: emailList)));
              },
            ),
          ),
          Positioned(
            bottom: 60,
            left: MediaQuery.of(context).size.width / 2 - 40,
            child: CircularImageButton(
              imagePath: 'lib/assets/logout.png',
              title: 'Logout',
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CircularImageButton extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CircularImageButton({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 6),
          Text(title,
              style: const TextStyle(color: Colors.white, fontSize: 14)),
        ],
      ),
    );
  }
}
