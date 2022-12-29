import 'package:flutter/material.dart';

SnackBar loginSnackBar() {
  return SnackBar(
    content: const Text(
      'Invalid User',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.start,
    ),
    backgroundColor: const Color.fromARGB(255, 218, 106, 106),
    action: SnackBarAction(
      label: 'dismiss',
      onPressed: () {},
      textColor: const Color.fromARGB(255, 34, 32, 32),
    ),
    behavior: SnackBarBehavior.floating,
  );
}
