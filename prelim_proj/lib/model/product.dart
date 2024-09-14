class Product { // Product class
  final String name; // Name of product
  final double price; // Price of product

Product({required this.name, required this.price}); // Constructor

  @override
    String toString() {
      return '$name - ₱${price.toStringAsFixed(2)}';
  }
}