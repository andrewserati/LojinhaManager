import 'package:flutter/material.dart';

abstract class IRegisterNewCustomerController {
  Future<void> submitForm(GlobalKey<FormState> formKey,
      Map<String, Object> formData, BuildContext context, void Function(bool) isRequesting);
}
