// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets/shared/util.dart';

class UsernameTextFormField extends StatefulWidget {
  final FocusNode thisNode;
  final FocusNode nextNode;
  final TextEditingController controller;

  const UsernameTextFormField({
    Key? key,
    required this.thisNode,
    required this.nextNode,
    required this.controller,
  }) : super(key: key);

  @override
  State<UsernameTextFormField> createState() => _UsernameTextFormFieldState();
}

class _UsernameTextFormFieldState extends State<UsernameTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Username'),
      keyboardType: TextInputType.name,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
      ],
      focusNode: widget.thisNode,
      validator: (value) {
        return isRequiredField(value, 'Username is required');
      },
      onFieldSubmitted: (value) => {
        widget.thisNode.unfocus(),
        FocusScope.of(context).requestFocus(widget.nextNode),
      },
      controller: widget.controller,
    );
  }
}
