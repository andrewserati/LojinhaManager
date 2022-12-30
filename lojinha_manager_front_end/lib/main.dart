import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/providers/customers_list.dart';
import 'package:lojinha_manager/injector.dart';
import 'package:provider/provider.dart';

import 'app/app.dart';

void main() {
  Injector.setup();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CustomersList())
      ],
      child: const App(),
    ),
  );
}
