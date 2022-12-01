// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  final double size;

  const HorizontalSpace({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: size);
  }
}
