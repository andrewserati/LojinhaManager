import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/components/customer/customers_page.dart';
import 'package:lojinha_manager/app/components/demand_create/demand_create_page.dart';
import 'package:lojinha_manager/app/components/login/login_page.dart';
import 'package:lojinha_manager/app/components/register_new_customer/register_new_customer_page.dart';
import 'package:lojinha_manager/app/widgets/shared/theme.dart';
import 'package:lojinha_manager/injector.dart';

import 'models/lm_routes.dart';
import 'components/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        title: 'Lojinha Manager',
        theme: LMTheme.lightTheme(),
        darkTheme: LMTheme.darkTheme(),
        themeMode: ThemeMode.dark,
        initialRoute: LMRoutes.login,
        routes: {
          LMRoutes.login: (context) => const LoginPage(),
          LMRoutes.home: (context) => const HomePage(),
          LMRoutes.createDemand: (context) =>
              Injector.resolve<DemandCreatePage>(),
          LMRoutes.customers: (context) => const CustomersPage(),
          LMRoutes.registerNewCustomer: (context) =>
              Injector.resolve<RegisterNewCustomerPage>(),
        },
      ),
    );
  }
}
