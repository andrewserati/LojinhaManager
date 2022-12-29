import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/interfaces/i_register_new_customer_controller.dart';

class RegisterNewCustomerController implements IRegisterNewCustomerController {
  @override
  Future<void> submitForm(GlobalKey<FormState> formKey) async {
    final thisformIsValid = formKey.currentState?.validate() ?? false;

    if (!thisformIsValid) return;

    print('form está válido!');
  }
}
