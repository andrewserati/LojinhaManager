import 'package:kiwi/kiwi.dart';
import 'package:lojinha_manager/app/components/demand_create/demand_create_page.dart';
import 'package:lojinha_manager/app/components/login/login_controller.dart';

import 'app/components/demand_create/demand_create_controller.dart';
import 'app/components/register_new_customer/register_new_customer_controller.dart';
import 'app/components/register_new_customer/register_new_customer_page.dart';

part 'injector.g.dart';

abstract class Injector {
  static late KiwiContainer kiwiContainer;
  static final resolve = kiwiContainer.resolve;

  static void setup() {
    kiwiContainer = KiwiContainer();
    _$Injector()._configure();
  }

  void _configure() {
    _configureModule();
  }

  void _configureModule() {
    _configureInstances();
    _configureFactories();
  }

  void _configureInstances() {}

  @Register.factory(LoginController)
  @Register.factory(DemandCreatePage)
  @Register.factory(DemandCreateController)
  @Register.factory(RegisterNewCustomerPage)
  @Register.factory(RegisterNewCustomerController)
  // ignore: unused_element
  void _configureFactories();
}
