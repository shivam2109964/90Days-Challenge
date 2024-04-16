// Customer class
class Customer {
  String name;
  List<Order> orders = [];

  Customer(this.name);

  void placeOrder(Order order) {
    orders.add(order);
    order.customer = this;
  }

  void displayOrders() {
    print("Orders placed by $name:");
    for (var order in orders) {
      print("- ${order.orderDetails}");
    }
  }
}

// Order class
class Order {
  String orderDetails;
  late Customer customer;

  Order(this.orderDetails);
}

void main() {
  // Creating customers
  var customer1 = Customer("Alice");
  var customer2 = Customer("Bob");

  // Creating orders
  var order1 = Order("Laptop");
  var order2 = Order("Smartphone");

  // Associating customers with orders
  customer1.placeOrder(order1);
  customer2.placeOrder(order2);

  // Displaying orders for each customer
  customer1.displayOrders();
  customer2.displayOrders();
}
