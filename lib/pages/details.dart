import 'package:flutter/material.dart';
import 'package:lab_exersice/models/EmailModel.dart';

class EmailDetailsPage extends StatelessWidget {
  final EmailMessage email;

  const EmailDetailsPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(email.subject),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("From: ${email.senderName}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text("Email: ${email.senderEmail}", style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text("Date: ${email.sentDate}", style: const TextStyle(fontSize: 16)),
            const Divider(height: 32),
            Text(email.message, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
