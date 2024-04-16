import 'dart:io';

class Customer {
  String name;
  List<Order> orders = [];

  Customer(this.name);

  void placedOrder(Order order) {
    orders.add(order);
    order.customer = this; // Association
  }

  void displayOrder() {
    print("Order is placed by $name");
    for (var order in orders) {
      print("- ${order.orderDetails}");
    }
  }
}

class Order {
  String orderDetails;
  late Customer customer;

  Order(this.orderDetails);
}

void main() {
  List<Customer> customers = [];

  int customerCount;
  do {
    print("Enter the customer you want to create: ");
    customerCount = int.parse(stdin.readLineSync()!);
  } while (customerCount <= 0);

  for (var i = 1; i <= customerCount; i++) {
    print("Enter name for Customer $i");
    String name = stdin.readLineSync()!;
    var customer = Customer(name);
    customers.add(customer);

    int orderCount;
    do {
      print("Enter the number of order for $name");
      orderCount = int.parse(stdin.readLineSync()!);
    } while (orderCount <= 0);

    //Creating order of each customer
    for (var j = 1; j <= orderCount; j++) {
      print("Enter order details for Order $j");
      String orderDetails = stdin.readLineSync()!;

      var order = Order(orderDetails);
      customer.placedOrder(order);
    }
  }

  //Displaying order for each customers
  for (var customer in customers) {
    customer.displayOrder();
  }
}
