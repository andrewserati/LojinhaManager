import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/components/login/login_controller.dart';
import 'package:lojinha_manager/app/widgets/shared/vertical_space.dart';
import 'package:lojinha_manager/injector.dart';

import '../../../models/credential.dart';
import 'login_button.dart';
import 'password_textformfield.dart';
import 'username_textformfield.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode usernameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          UsernameTextFormField(
            thisNode: usernameFocus,
            nextNode: passwordFocus,
            controller: _usernameController,
          ),
          PasswordTextFormField(
            thisNode: passwordFocus,
            controller: _passwordController,
          ),
          const VerticalSpace(size: 40),
          LoginButton(
            formKey: _formKey,
            credential: Credential(
                username: _usernameController.value.text,
                password: _passwordController.value.text),
            loginController: Injector.resolve<LoginController>(),
          ),
        ],
      ),
    );
  }
}
