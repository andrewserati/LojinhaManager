import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/pages/customer_page.dart';
import 'package:lojinha_manager/app/components/login/login_page.dart';

import 'models/enums/route_enum.dart';
import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lojinha Manager',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        brightness: Brightness.dark,
      ),
      initialRoute: RouteEnum.login.toString(),
      routes: {
        RouteEnum.login.toString(): (context) => const LoginPage(),
        RouteEnum.home.toString(): (context) => const HomePage(),
        RouteEnum.customers.toString(): (context) => const CustomerPage()
      },
    );
  }
}
