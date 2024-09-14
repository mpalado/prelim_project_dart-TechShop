
import 'package:prelim_proj/model/customer.dart';
import 'package:prelim_proj/model/product.dart';
import 'package:prelim_proj/model/purchase.dart';

class PurchaseService {
  final List<Purchase> _purchases = []; // List to store purchases

void makePurchase(Customer customer, Product product, int quantity) { // Add purchase to list
  final purchase = Purchase(customer: customer, product: product, quantity: quantity); // Create purchase object
  _purchases.add(purchase); // Add purchase to list
  print('Purchase made: $purchase');
}
  List<Purchase> get purchases => _purchases; // Get list of purchases
}