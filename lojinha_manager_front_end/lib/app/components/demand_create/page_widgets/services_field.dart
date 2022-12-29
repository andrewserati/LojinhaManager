import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/service.dart';
import 'package:provider/provider.dart';

import 'services_selection_modal.dart';

class ServicesField extends StatefulWidget {
  const ServicesField({super.key});

  @override
  State<ServicesField> createState() => _ServicesFieldState();
}

class _ServicesFieldState extends State<ServicesField> {
  List<Service> services = [
    Service(description: 'Formatação Windows'),
    Service(description: 'Limpeza simples'),
    Service(description: 'Limpeza completa'),
  ];

  @override
  Widget build(BuildContext context) {
    List<Service> selectedServices =
        services.where((service) => service.isChecked).toList();
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: Text(
            'Services',
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: selectedServices.length,
            itemBuilder: (context, index) {
              return ChangeNotifierProvider(
                create: (_) => selectedServices[index],
                child: Text(selectedServices[index].description),
              );
            }),
        ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (_) {
                return SizedBox(
                  height: 550,
                  child: ServicesSelectionModal(services: services),
                );
              },
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.add),
              Text('Add service(s)'),
            ],
          ),
        ),
      ],
    );
  }
}
