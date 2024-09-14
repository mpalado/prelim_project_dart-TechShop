import 'package:prelim_proj/model/customer.dart';

class CustomerService {
  final List<Customer> _customers = []; // List to store customers

void addCustomer(String name, String gender, final String email,final String contact_number) { // Add customer to list
  final customer = Customer(name: name, gender: gender, email: email, contact_number: contact_number); // Create customer object
  _customers.add(customer); // Add customer to list
  print('Customer added: $customer');
}
  List<Customer> get customers => _customers; // Get list of customers
}