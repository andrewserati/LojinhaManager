import '../customer.dart';

abstract class IDemandCreateController {
  Future<Iterable<Customer>> getCustomersToAutocomplete(String query);
}
