import 'package:flutter/material.dart';

class LMFloatingActionButton extends StatelessWidget {
  final String textLabel;
  final String route;

  const LMFloatingActionButton(
      {super.key, required this.textLabel, required this.route});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.add),
      label: Text(textLabel),
      onPressed: () => Navigator.of(context).pushNamed(route),
    );
  }
}