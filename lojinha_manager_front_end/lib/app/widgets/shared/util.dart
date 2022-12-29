import 'package:flutter/material.dart';

const BoxDecoration loginPageBackground = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/images/783477.png"),
    fit: BoxFit.cover,
  ),
);

String? isRequiredField(String? value, String alert) {
  if (value == null || value.isEmpty) {
    return alert;
  }
  return null;
}
