import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/interfaces/i_register_new_customer_controller.dart';
import 'package:lojinha_manager/app/models/providers/customers_list.dart';
import 'package:provider/provider.dart';

class RegisterNewCustomerController implements IRegisterNewCustomerController {
  @override
  Future<void> submitForm(
      GlobalKey<FormState> formKey,
      Map<String, Object> formData,
      BuildContext context,
      void Function(bool) isRequesting) async {
    final navigator = Navigator.of(context);
    final thisFormIsValid = formKey.currentState?.validate() ?? false;

    if (!thisFormIsValid) return;

    formKey.currentState?.save();

    isRequesting(true);

    try {
      await Provider.of<CustomersList>(context, listen: false)
          .postCustomer(formData);
      navigator.pop();
    } catch (error) {
      //error.hashCode;
    } finally {
      isRequesting(false);
    }
  }
}
