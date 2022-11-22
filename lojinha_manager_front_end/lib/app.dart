import 'package:flutter/material.dart';
import 'package:lojinha_manager/pages/customer_page.dart';
import 'package:lojinha_manager/pages/login_page.dart';

import 'home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lojinha Manager',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple, brightness: Brightness.dark),
        routes: {
          'login': (context) => const LoginPage(),
          'home': (context) => const HomePage(),
          'customers': (context) => const CustomerPage()
        },
        home: const LoginPage());
  }
}
