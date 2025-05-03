import 'package:flutter/material.dart';
import 'package:lab_exersice/models/EmailModel.dart';
import 'package:lab_exersice/pages/details.dart';

class ViewGridPage extends StatelessWidget {
  final List<EmailMessage> emailList;

  const ViewGridPage({super.key, required this.emailList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email Grid View"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: emailList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final email = emailList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EmailDetailsPage(email: email),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(email.subject,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                      const SizedBox(height: 8),
                      Text("From: ${email.senderName}",
                          style: const TextStyle(fontSize: 14)),
                      Text(email.senderEmail,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.grey)),
                      const Spacer(),
                      Text(email.sentDate,
                          style: const TextStyle(
                              fontSize: 12, fontStyle: FontStyle.italic)),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
