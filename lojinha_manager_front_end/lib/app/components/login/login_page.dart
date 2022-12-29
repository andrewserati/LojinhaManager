// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../widgets/shared/util.dart';
import 'page_widgets/login_sizedbox.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: loginPageBackground,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: LoginSizedBox(),
            ),
          ),
        ),
      ),
    );
  }
}
