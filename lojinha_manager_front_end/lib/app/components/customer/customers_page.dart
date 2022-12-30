import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/providers/customers_list.dart';
import 'package:provider/provider.dart';

import '../../models/lm_routes.dart';
import '../../widgets/shared/lm_floatingactionbutton.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final customers = Provider.of<CustomersList>(context).customers;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customers'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: customers.length,
          itemBuilder: (ctx, index) {
            return Text(customers[index].toString());
          },
        ),
      ),
      floatingActionButton: const LMFloatingActionButton(
        textLabel: "register new customer",
        route: LMRoutes.registerNewCustomer,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
