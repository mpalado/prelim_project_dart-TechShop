
import 'package:prelim_proj/model/customer.dart';
import 'package:prelim_proj/model/product.dart';

class Purchase {
  final Customer customer; // Customer who made the purchase
  final Product product;  // Product purchased
  final int quantity; // Quantity of product purchased

Purchase({required this.customer, required this.product, required this.quantity}); // Constructor

double get totalPrice => product.price * quantity; // Calculate total price of purchase

  @override
    String toString() {
      return '${customer.name} purchased $quantity x ${product.name} for ₱${totalPrice.toStringAsFixed(2)}';
  }
}