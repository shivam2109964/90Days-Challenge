import 'dart:io';

abstract class IPaymentMethod {
  void pay();
}

class CashPayment implements IPaymentMethod {
  @override
  void pay() {
    print("Pay with cash");
  }
}

class CredtCardPayment implements IPaymentMethod {
  @override
  void pay() {
    print("Pay with credit");
  }
}

class PayPalPayment implements IPaymentMethod {
  @override
  void pay() {
    print("Pay with Paypal");
  }
}

class PaymentService {
  void pay(IPaymentMethod paymentMethd) {
    paymentMethd.pay();
  }
}

void main() {
  PaymentService paymentService = PaymentService();
  IPaymentMethod paymentMethod;
  print("Enter your choice");
  print("Enter 1 for cash Payment");
  print("Enter 2 for card payment");
  print("Enter 3 for Paypal payment");
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      paymentMethod = CashPayment();
      break;
    case 2:
      paymentMethod = CredtCardPayment();
      break;
    case 3:
      paymentMethod = PayPalPayment();
      break;
    default:
      print("Invalid Choice");
      return;
  }
  paymentService.pay(paymentMethod);
}
