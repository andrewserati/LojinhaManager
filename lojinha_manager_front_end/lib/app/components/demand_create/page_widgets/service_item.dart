// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/widgets/shared/horizontal_space.dart';

import '../../../models/service.dart';

class ServiceItem extends StatefulWidget {
  final Service service;

  const ServiceItem({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  void _changeSelection() {
    setState(() {
      widget.service.changeSelection();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeSelection,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromRGBO(255, 255, 255, 0.3),
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(widget.service.isChecked
                  ? Icons.check_box
                  : Icons.check_box_outline_blank),
              const HorizontalSpace(size: 10),
              Text(
                widget.service.description,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
