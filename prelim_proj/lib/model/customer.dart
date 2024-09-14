class Customer {
  final String name; // Name of customer
  final String gender; // Email of customer
  final String email; // Email of customer
  final String contact_number; // Contact Number of customer

Customer({required this.name, required this.gender, required this.email, required this.contact_number }); // Constructor

  @override
    String toString() {
      return 'Customer: $name, Gender: $gender, Email: $email, Contact Number: $contact_number';
  }
}