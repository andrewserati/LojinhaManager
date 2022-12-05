import 'package:flutter/material.dart';
import 'package:lojinha_manager/app/models/enums/route_enum.dart';

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
        title: const Text("Welcome to the Lojinha Manager!"),
        centerTitle: true,
        actions: [
          ElevatedButton.icon(
            label: const Text('Sair'),
            icon: const Icon(Icons.logout),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () =>
                {Navigator.pushNamed(context, RouteEnum.login.toString())},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.groups),
              title: const Text('Área de Clientes'),
              onTap: () => {Navigator.pushNamed(context, 'customers')},
            ),
            const ListTile(
                enabled: false,
                title: Text('Em breve',
                    style: TextStyle(fontStyle: FontStyle.italic)))
          ],
        ),
      ),
      body: const Center(child: Text('VOCÊ ESTÁ NA HOMEPAGE!')),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add), label: 'Add', tooltip: 'coming soon...'),
        ],
      ),
    );
  }
}
