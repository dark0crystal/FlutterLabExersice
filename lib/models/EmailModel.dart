class EmailMessage {
  final String senderName;
  final String senderEmail;
  final String subject;
  final String sentDate;
  final String message;

  EmailMessage({
    required this.senderName,
    required this.senderEmail,
    required this.subject,
    required this.sentDate,
    required this.message,
  });
}