import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/components/login/login_controller.dart';
import 'package:lojinha_manager/app/widgets/shared/vertical_space.dart';
import 'package:lojinha_manager/injector.dart';

import '../../../models/credential.dart';
import 'login_button.dart';
import 'password_textformfield.dart';
import 'username_textformfield.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final FocusNode usernameFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final Credential credential = Credential();

  LoginForm({super.key});

  void _captureUsernameFromField(String value) => credential.username = value;

  void _capturePasswordFromField(String value) => credential.password = value;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          UsernameTextFormField(
            thisNode: usernameFocus,
            nextNode: passwordFocus,
            capturer: _captureUsernameFromField,
          ),
          PasswordTextFormField(
            thisNode: passwordFocus,
            capturer: _capturePasswordFromField,
          ),
          const VerticalSpace(size: 40),
          LoginButton(
            formKey: _formKey,
            credential: credential,
            loginController: Injector.resolve<LoginController>(),
          ),
        ],
      ),
    );
  }
}
