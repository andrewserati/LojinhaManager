import 'package:flutter/material.dart';
import 'package:lojinha_manager/injector.dart';

import 'app/app.dart';

void main() {
  Injector.setup();
  runApp(const App());
}
