import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/lm_routes.dart';

import '../../widgets/shared/lm_floatingactionbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lojinha Manager"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Logged as admin'),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.groups),
              title: const Text('Customers'),
              onTap: () => {
                Navigator.of(context).popAndPushNamed(LMRoutes.customers),
              },
            ),
            const ListTile(
              enabled: false,
              title: Text(
                'Coming soon',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                label: const Text('Sair'),
                icon: const Icon(Icons.logout),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    LMRoutes.login,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('VOCÊ ESTÁ NA HOMEPAGE!'),
      ),
      floatingActionButton: const LMFloatingActionButton(
        textLabel: "create new demand",
        route: LMRoutes.createDemand,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
