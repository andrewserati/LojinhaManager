import 'package:flutter/material.dart';

class Service with ChangeNotifier {
  String description;
  bool isChecked;

  Service({
    required this.description,
    this.isChecked = false,
  });

  void changeSelection() {
    isChecked = !isChecked;
    notifyListeners();
  }
}
