import 'package:flutter/material.dart';

import '../../../widgets/shared/logo.dart';
import '../../../widgets/shared/vertical_space.dart';
import 'login_form.dart';

class LoginSizedBox extends StatelessWidget {
  const LoginSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Logo(),
          const VerticalSpace(size: 20),
          LoginForm(),
        ],
      ),
    );
  }
}
