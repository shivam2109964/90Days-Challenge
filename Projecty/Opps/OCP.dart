import 'dart:io';

abstract class OrderItem {
  double getPrice();
}

// Concrete implementation of an order itme
class Product extends OrderItem {
  double price;

  Product(this.price);

  @override
  double getPrice() {
    return price;
  }
}

//Abstract class representing a discount strategy
abstract class Discount {
  double applyDiscount(double price);
}

//Concrete
class ApplyDiscount extends Discount {
  double discountPercentege;

  ApplyDiscount(this.discountPercentege);

  @override
  double applyDiscount(double price) {
    return price * (1 - discountPercentege / 100);
  }
}

//Order class
class Order {
  List<OrderItem> items = [];

  Discount? discount;

  void addItem(OrderItem item) {
    items.add(item);
  }

  void setDiscount(Discount discount) {
    this.discount = discount;
  }

  double calculateTotal() {
    double total = 0;
    for (OrderItem itme in items) {
      total += itme.getPrice();
    }
    if (discount != null) {
      total = discount!.applyDiscount(total);
    }
    return total;
  }
}

void main() {
  // Creating an order
  Order order = Order();

  // Taking user input for order items
  bool continueAddingItems = true;
  while (continueAddingItems) {
    stdout.write("Enter the price of the item: ");
    double price = double.parse(stdin.readLineSync()!);

    OrderItem item = Product(price);
    order.addItem(item);

    stdout.write("Do you want to add another item? (yes/no): ");
    String continueInput = stdin.readLineSync()!.toLowerCase();
    if (continueInput != "yes") {
      continueAddingItems = false;
    }
  }

  // Calculating total cost without discount
  print("Total cost without discount: ${order.calculateTotal()}");

  // Taking user input for discount
  stdout.write("Enter the discount percentage: ");
  double discountPercentage = double.parse(stdin.readLineSync()!);
  Discount discount = ApplyDiscount(discountPercentage);
  order.setDiscount(discount);

  var totalItem = order.items.length;
  // Calculating total cost with discount
  print(
      "Total cost with discount: ${order.calculateTotal()} Total item is added $totalItem");
}
