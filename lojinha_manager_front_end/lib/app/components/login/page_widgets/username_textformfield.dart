import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../widgets/shared/util.dart';

class UsernameTextFormField extends StatefulWidget {
  final FocusNode thisNode;
  final FocusNode nextNode;
  final void Function(String) capturer;

  const UsernameTextFormField({
    Key? key,
    required this.thisNode,
    required this.nextNode,
    required this.capturer,
  }) : super(key: key);

  @override
  State<UsernameTextFormField> createState() => _UsernameTextFormFieldState();
}

class _UsernameTextFormFieldState extends State<UsernameTextFormField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Username',
      ),
      style: const TextStyle(
        color: Colors.white,
      ),
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
      onChanged: (value) {
        widget.capturer(controller.value.text);
      },
      controller: controller,
    );
  }
}
