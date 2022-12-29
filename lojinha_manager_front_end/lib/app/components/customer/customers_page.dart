import 'package:flutter/material.dart';

import '../../models/lm_routes.dart';
import '../../widgets/shared/lm_floatingactionbutton.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('VOCÊ ESTÁ NA ÁREA DE CLIENTES!')
      ),
      floatingActionButton: const LMFloatingActionButton(
        textLabel: "register new customer",
        route: LMRoutes.registerNewCustomer,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
