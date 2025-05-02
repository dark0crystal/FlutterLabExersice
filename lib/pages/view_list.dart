import 'package:flutter/material.dart';
import 'package:lab_exersice/models/EmailModel.dart';
import 'package:lab_exersice/pages/details.dart';


class ViewListPage extends StatelessWidget {
  final List<EmailMessage> emailList;

  const ViewListPage({super.key, required this.emailList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Email List View"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: emailList.length,
        itemBuilder: (context, index) {
          final email = emailList[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            child: ListTile(
              leading: const Icon(Icons.email, color: Colors.blue),
              title: Text(email.subject),
              subtitle: Text("From: ${email.senderName}\nDate: ${email.sentDate}"),
              isThreeLine: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => EmailDetailsPage(email: email),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
