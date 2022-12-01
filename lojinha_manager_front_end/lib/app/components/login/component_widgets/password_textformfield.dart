// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lojinha_manager/app/widgets/shared/util.dart';

class PasswordTextFormField extends StatelessWidget {
  final FocusNode thisNode;
  final FocusNode? nextNode;
  final TextEditingController controller;

  const PasswordTextFormField({
    Key? key,
    required this.thisNode,
    this.nextNode,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Password'),
      obscureText: true,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
      ],
      focusNode: thisNode,
      validator: (value) {
        return isRequiredField(value, 'Password is required');
      },
      controller: controller,
    );
  }
}
