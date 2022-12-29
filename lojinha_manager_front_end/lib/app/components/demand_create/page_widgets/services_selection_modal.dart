import 'package:flutter/material.dart';

import '../../../models/service.dart';
import 'service_item.dart';

class ServicesSelectionModal extends StatelessWidget {
  final List<Service> services;

  const ServicesSelectionModal({
    super.key,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, index) {
        return ServiceItem(service: services[index]);
      },
    );
  }
}
