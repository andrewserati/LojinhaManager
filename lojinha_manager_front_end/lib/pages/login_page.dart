import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final isLogged = false;

  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.isLogged) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('VOCÊ JÁ ESTÁ LOGADO...REDIRECIONANDO PARA A HOMEPAGE')
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('VOCÊ ESTÁ NA PÁGINA DE LOGIN'),
            ElevatedButton(
              onPressed: () => {Navigator.pushNamed(context, 'home')},
              child: const Text('Logar'),
            ),
          ],
        ),
      ),
    );
  }
}
