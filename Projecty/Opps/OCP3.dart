abstract class DiscountStrategy {
  double calculateDiscount(double originalPrice);
}

class PercentageDiscount implements DiscountStrategy {
  final double percentage;

  PercentageDiscount(this.percentage);

  @override
  double calculateDiscount(double originalPrice) {
    return originalPrice * (percentage / 100);
  }
}

class FixedAmountDiscount implements DiscountStrategy {
  final double amount;

  FixedAmountDiscount(this.amount);

  @override
  double calculateDiscount(double originalPrice) {
    return amount;
  }
}

class Order {
  final List<OrderItem> items;
  final DiscountStrategy discount;

  Order({required this.items, required this.discount});

  double get totalAmount {
    final double subtotal =
        items.fold(0, (total, item) => total + item.price * item.quantity);
    final discountAmount = discount.calculateDiscount(subtotal.toDouble());
    return subtotal - discountAmount;
  }
}

class OrderItem {
  final String productId;
  final String productName;
  final double price;
  final int quantity;

  OrderItem({
    required this.productId,
    required this.productName,
    required this.price,
    required this.quantity,
  });
}

void main() {
  final order = Order(
    items: [
      OrderItem(
        productId: '1',
        productName: 'Widget A',
        price: 10.99,
        quantity: 2,
      ),
      OrderItem(
        productId: '2',
        productName: 'Widget B',
        price: 15.49,
        quantity: 1,
      ),
    ],
    discount: PercentageDiscount(10), // 10% discount
  );

  print(
      'Order Total (with 10% discount): \$${order.totalAmount.toStringAsFixed(2)}');
}
