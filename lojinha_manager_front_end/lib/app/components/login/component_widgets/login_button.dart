// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lojinha_manager/app/models/credential.dart';

import '../../../models/enums/route_enum.dart';
import '../../../models/interfaces/i_login_controller.dart';
import '../../../widgets/shared/horizontal_space.dart';
import 'login_snackbar.dart';

class LoginButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Credential credential;
  final ILoginController loginController;

  const LoginButton({
    Key? key,
    required this.formKey,
    required this.credential,
    required this.loginController,
  }) : super(key: key);

  void validateCredential(BuildContext context) async {
    await loginController.logIn(credential).then(
      (value) {
        if (value) {
          Navigator.pushReplacementNamed(
            context,
            RouteEnum.home.toString(),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            loginSnackBar(),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: () async {
          if (formKey.currentState!.validate()) {
            FocusManager.instance.primaryFocus?.unfocus();
            validateCredential(context);
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.login,
            ),
            HorizontalSpace(size: 5),
            Text(
              'Login',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
