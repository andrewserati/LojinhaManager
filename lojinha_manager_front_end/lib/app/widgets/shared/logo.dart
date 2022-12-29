import 'package:flutter/material.dart';

import 'theme.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'LOJINHA MANAGER',
      style: TextStyle(
        fontSize: 50,
        color: primaryForegroundColorLM,
      ),
      textAlign: TextAlign.center,
    );
  }
}
