import 'package:flutter/material.dart';
import 'package:sabores_del_peru/src/pages/home/components/DrawerPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menú"),
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        backgroundColor: const Color.fromRGBO(56, 60, 71, 20),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const DrawerPage(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Bienvenido a la página de inicio',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Acción cuando se presiona el botón
              },
              child: const Text('Ir a otra página'),
            ),
          ],
        ),
      ),
    );
  }
}
