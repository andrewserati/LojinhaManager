// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _configureFactories() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerFactory((c) => LoginController())
      ..registerFactory((c) => DemandCreatePage(demandCreateController: c<DemandCreateController>()))
      ..registerFactory((c) => DemandCreateController())
      ..registerFactory((c) => RegisterNewCustomerPage(controller: c<RegisterNewCustomerController>()))
      ..registerFactory((c) => RegisterNewCustomerController());
  }
}
