import 'package:lojinha_manager/app/models/interfaces/i_demand_create_controller.dart';
import 'package:http/http.dart' as http;

import '../../models/customer.dart';

class DemandCreateController implements IDemandCreateController {
  final _url = '';
  final List<Customer> _customers = [];

  List<Customer> get customers => [..._customers];

  @override
  Future<Iterable<Customer>> getCustomersToAutocomplete(String query) async {
    return [
      Customer(firstName: 'JOÃO', lastName: ''),
      Customer(firstName: 'MARQUIN', lastName: ''),
      Customer(firstName: 'ANDREW', lastName: ''),
      Customer(firstName: 'MARIA', lastName: ''),
    ].where((x) => x.firstName.contains(query.toUpperCase())).toList();
  }
}
