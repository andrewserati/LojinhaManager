import 'package:flutter/material.dart';

abstract class IRegisterNewCustomerController {
  Future<void> submitForm(GlobalKey<FormState> formKey);
}
