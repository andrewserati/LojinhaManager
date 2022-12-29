import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/interfaces/i_register_new_customer_controller.dart';
import 'package:lojinha_manager/app/widgets/shared/util.dart';
import 'package:lojinha_manager/app/widgets/shared/vertical_space.dart';

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
                    labelText: 'First name',
                  ),
                  enableSuggestions: false,
                  focusNode: _firstNameFN,
                  maxLength: 30,
                  textInputAction: TextInputAction.next,
                  validator: (value) => isRequiredField(
                    value,
                    'First name is required!',
                  ),
                ),
                const VerticalSpace(size: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Middle name (optional)',
                  ),
                  enableSuggestions: false,
                  maxLength: 50,
                  textInputAction: TextInputAction.next,
                  //validator: () {},
                ),
                const VerticalSpace(size: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Last name',
                  ),
                  enableSuggestions: false,
                  maxLength: 30,
                  textInputAction: TextInputAction.next,
                  validator: (value) => isRequiredField(
                    value,
                    'Last name is required!',
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
                  textInputAction: TextInputAction.done,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => widget.controller.submitForm(_formKey),
        child: const Icon(Icons.save),
      ),
    );
  }
}
