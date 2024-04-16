abstract class MessageSender {
  void sendMessage(String recipient, String message);
}

class EmailSender implements MessageSender {
  @override
  void sendMessage(String recipient, String message) {
    print('Sending email to $recipient: $message');
  }
}

class SMSSender implements MessageSender {
  @override
  void sendMessage(String recipient, String message) {
    print('Sending SMS to $recipient: $message');
  }
}

class PushNotificationSender implements MessageSender {
  @override
  void sendMessage(String recipient, String message) {
    print('Sending push notification to $recipient: $message');
  }
}

class MessagingService {
  final MessageSender sender;

  MessagingService(this.sender);

  void sendMessage(String recipient, String message) {
    sender.sendMessage(recipient, message);
  }
}

void main() {
  final emailSender = EmailSender();
  final messagingService = MessagingService(emailSender);

  messagingService.sendMessage('user@example.com', 'Hello, Dart!');
}
