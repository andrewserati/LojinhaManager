import 'package:flutter/material.dart';

BoxDecoration loginPageBackground() {
  return const BoxDecoration(
    image: DecorationImage(
      image: AssetImage("assets/images/783477.png"),
      fit: BoxFit.cover,
    ),
  );
}

String? isRequiredField(String? value, String alert) {
  if (value == null || value.isEmpty) {
    return alert;
  }
  return null;
}
