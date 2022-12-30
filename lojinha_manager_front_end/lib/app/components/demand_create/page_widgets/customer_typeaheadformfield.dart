import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../models/customer.dart';
import '../../../models/interfaces/i_demand_create_controller.dart';

class CustomerTypeAheadFormField extends StatefulWidget {
  final IDemandCreateController demandCreateController;

  const CustomerTypeAheadFormField({
    super.key,
    required this.demandCreateController,
  });

  @override
  State<CustomerTypeAheadFormField> createState() =>
      _CustomerTypeAheadFormFieldState();
}

class _CustomerTypeAheadFormFieldState
    extends State<CustomerTypeAheadFormField> {
  TextEditingController customerTEC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TypeAheadFormField<Customer?>(
      textFieldConfiguration: TextFieldConfiguration(
        controller: customerTEC,
        decoration: const InputDecoration(
          labelText: 'Customer',
        ),
      ),
      suggestionsCallback:
          widget.demandCreateController.getCustomersToAutocomplete,
      itemBuilder: (context, Customer? suggestion) {
        return ListTile(
          title: Text(suggestion!.firstName),
        );
      },
      onSuggestionSelected: (suggestion) {
        customerTEC.text = suggestion?.firstName ?? '';
      },
      noItemsFoundBuilder: (_) {
        return const ListTile(
          textColor: Colors.red,
          leading: Icon(Icons.hourglass_empty),
          title: Text(
            'num achei nada',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
