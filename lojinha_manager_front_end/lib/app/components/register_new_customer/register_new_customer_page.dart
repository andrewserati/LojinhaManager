import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/interfaces/i_register_new_customer_controller.dart';
import 'package:lojinha_manager/app/widgets/shared/util.dart';
import 'package:lojinha_manager/app/widgets/shared/vertical_space.dart';

import '../../widgets/shared/theme.dart';

class RegisterNewCustomerPage extends StatefulWidget {
  final IRegisterNewCustomerController controller;

  const RegisterNewCustomerPage({super.key, required this.controller});

  @override
  State<RegisterNewCustomerPage> createState() =>
      _RegisterNewCustomerPageState();
}

class _RegisterNewCustomerPageState extends State<RegisterNewCustomerPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode _firstNameFN = FocusNode();
  final _formData = <String, Object>{};
  bool _isRequesting = false;

  void isRequesting(bool value) {
    setState(() {
      _isRequesting = value;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _firstNameFN.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('registering a new customer'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                    labelText: 'First name *',
                  ),
                  enableSuggestions: false,
                  focusNode: _firstNameFN,
                  maxLength: 30,
                  onSaved: (newValue) =>
                      _formData['firstName'] = newValue ?? '',
                  textInputAction: TextInputAction.next,
                  validator: (value) => isRequiredField(
                    value,
                    'First name is required',
                  ),
                ),
                const VerticalSpace(size: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Middle name',
                  ),
                  enableSuggestions: false,
                  maxLength: 50,
                  onSaved: (newValue) =>
                      _formData['middleName'] = newValue ?? '',
                  textInputAction: TextInputAction.next,
                ),
                const VerticalSpace(size: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last name *',
                  ),
                  enableSuggestions: false,
                  maxLength: 30,
                  onSaved: (newValue) => _formData['lastName'] = newValue ?? '',
                  textInputAction: TextInputAction.next,
                  validator: (value) => isRequiredField(
                    value,
                    'Last name is required',
                  ),
                ),
                const VerticalSpace(size: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Phone number',
                  ),
                  enableSuggestions: false,
                  keyboardType: TextInputType.phone,
                  maxLength: 11,
                  onSaved: (newValue) =>
                      _formData['phoneNumber'] = newValue ?? '',
                  textInputAction: TextInputAction.next,
                ),
                const VerticalSpace(size: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  enableSuggestions: false,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 100,
                  onSaved: (newValue) => _formData['email'] = newValue ?? '',
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => widget.controller
            .submitForm(_formKey, _formData, context, isRequesting),
        child: !_isRequesting
            ? const Icon(Icons.save)
            : const CircularProgressIndicator(color: primaryForegroundColorLM),
      ),
    );
  }
}
