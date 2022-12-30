import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/customer.dart';

class CustomersList with ChangeNotifier {
  final List<Customer> _customers = [];

  List<Customer> get customers => [..._customers];

  Future<void> getCustomers() async {
    notifyListeners();
  }

  Future<void> postCustomer(Map<String, Object> formData) async {
    _customers.add(
      Customer(
        firstName: formData['firstName'] as String,
        middleName: formData['middleName'] as String,
        lastName: formData['lastName'] as String,
        phoneNumber: formData['phoneNumber'] as String,
        email: formData['email'] as String,
      ),
    );

    notifyListeners();
  }
}
