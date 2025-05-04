import 'package:flutter/material.dart';
import 'package:lab_exersice/pages/logout.dart';
import 'package:lab_exersice/pages/view_grid.dart';
import 'package:lab_exersice/pages/view_list.dart';
import 'package:lab_exersice/shared/EmailsData.dart';


class Home extends StatelessWidget {
  
  

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
          
          // 3 circular image buttons
          Positioned(
            top: 200,
            left: 30,
            child: CircularImageButton(
              imagePath: 'lib/assets/bg1.jpeg',
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
              imagePath: 'lib/assets/bg2.jpeg',
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
              imagePath: 'lib/assets/bg3.jpeg',
              title: 'Logout',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const LogoutPage()),
                );
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
          Stack(
            alignment: Alignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  imagePath,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.4), // Semi-transparent overlay
                ),
                alignment: Alignment.center,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
