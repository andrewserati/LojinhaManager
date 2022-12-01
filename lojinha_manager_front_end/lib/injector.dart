import 'package:flutter/cupertino.dart';
import 'package:kiwi/kiwi.dart';
import 'package:lojinha_manager/app/components/login/component_widgets/login_button.dart';
import 'package:lojinha_manager/app/components/login/login_controller.dart';

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
  // ignore: unused_element
  void _configureFactories();
}
