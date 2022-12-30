class Customer {
  final String firstName;
  String? middleName;
  final String lastName;
  String? phoneNumber;
  String? email;

  Customer({
    required this.firstName,
    this.middleName,
    required this.lastName,
    this.phoneNumber,
    this.email,
  });

  @override
  String toString() {
    return '$firstName, $lastName';
  }
}
