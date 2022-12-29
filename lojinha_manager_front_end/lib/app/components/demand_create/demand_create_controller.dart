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
      Customer('JOÃO'),
      Customer('MARQUIN'),
      Customer('ANDREW'),
      Customer('MARIA'),
    ].where((x) => x.nome.contains(query.toUpperCase())).toList();
  }
}
