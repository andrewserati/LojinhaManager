// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:lojinha_manager/app/models/interfaces/i_demand_create_controller.dart';
import 'package:lojinha_manager/app/widgets/shared/vertical_space.dart';

import 'page_widgets/customer_typeaheadformfield.dart';
import 'page_widgets/services_field.dart';

class DemandCreatePage extends StatefulWidget {
  final IDemandCreateController demandCreateController;

  const DemandCreatePage({
    Key? key,
    required this.demandCreateController,
  }) : super(key: key);

  @override
  State<DemandCreatePage> createState() => _DemandCreatePageState();
}

class _DemandCreatePageState extends State<DemandCreatePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creating new demand'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomerTypeAheadFormField(
                    demandCreateController: widget.demandCreateController),
                const VerticalSpace(size: 32),
                ServicesField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
