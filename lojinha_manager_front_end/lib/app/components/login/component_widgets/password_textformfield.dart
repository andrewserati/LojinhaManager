// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lojinha_manager/app/widgets/shared/util.dart';

class PasswordTextFormField extends StatefulWidget {
  final FocusNode thisNode;
  final FocusNode? nextNode;
  final void Function(String) capturer;

  const PasswordTextFormField({
    Key? key,
    required this.thisNode,
    this.nextNode,
    required this.capturer,
  }) : super(key: key);

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  TextEditingController controller = TextEditingController();
  bool _obscureText = true;

  void _changePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        suffix: InkWell(
          onTap: _changePasswordVisibility,
          child: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ),
      ),
      obscureText: _obscureText,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
      ],
      focusNode: widget.thisNode,
      validator: (value) {
        return isRequiredField(value, 'Password is required');
      },
      onChanged: (value) {
        widget.capturer(controller.value.text);
      },
      controller: controller,
    );
  }
}
