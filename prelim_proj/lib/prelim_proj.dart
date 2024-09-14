import 'dart:io';

import 'package:prelim_proj/global_providers.dart';
import 'package:riverpod/riverpod.dart';

void main(List<String> arguments){ // Main function
  final container = ProviderContainer();

  final customerService = container.read(customerServiceProvider);
  final productService = container.read(productServiceProvider);
  final purchaseService = container.read(purchaseServiceProvider);

while(true){ // Loop to display menu
  print('** Welcome to TechShop! **');
  print('1. Add Customer');
  print('2. Add Product');
  print('3. Make Purchase');
  print('4. View Products');
  print('5. View Customers');
  print('6. Exit');

    stdout.write('Choose an option: '); // Prompt user to choose an option
      final choice = stdin.readLineSync();

switch (choice){ // Switch statement to handle user input
  case '1': // Case 1: Add Customer
    stdout.write('Enter Customer Name: ');
      final name = stdin.readLineSync()!;
    stdout.write('Enter Customer Gender: ');
      final gender = stdin.readLineSync()!;
    stdout.write('Enter Customer Email: ');
      final email = stdin.readLineSync()!;
    stdout.write('Enter Customer Contact Number: ');
      final contact_number = stdin.readLineSync()!;
    customerService.addCustomer(name, gender, email, contact_number);
      break;

  case '2': // Case 2: Add Product
    stdout.write('Enter Product Name: ');
      final productName = stdin.readLineSync()!;
    stdout.write('Enter Product Price: ');
      final productPrice = double.parse(stdin.readLineSync()!);
    productService.addProduct(productName, productPrice);
      break;

  case '3': // Case 3: Make Purchase
    print('Choose a Customer: ');
      customerService.customers.asMap().forEach((i, c) => print('$i: $c'));
        final customerIndex = int.parse(stdin.readLineSync()!);
        final customer = customerService.customers[customerIndex];

    print('Choose a Product: '); // Prompt user to choose a product
      productService.products.asMap().forEach((i, p) => print('$i: $p'));
        final productIndex = int.parse(stdin.readLineSync()!);
        final product = productService.products[productIndex];

    stdout.write('Enter Quantity: '); // Prompt user to enter quantity
      final quantity = int.parse(stdin.readLineSync()!);

    purchaseService.makePurchase(customer, product, quantity); // Make purchase
      break;

  case '4': // Case 4: View Products
    print('** Products **');
      productService.products.forEach(print);
        break;

  case '5':   // Case 5: View Customers
    print('** Customers **');
      customerService.customers.forEach(print);
        break;

  case '6': // Case 6: Exit
    print('Shutting down...');
      exit(0);

      default:
        print('Invalid input. Please Try Again!');

    }
  }
}