import 'package:flutter/material.dart';
import 'package:sabores_del_peru/src/pages/home/components/DrawerPage.dart';
import 'package:sabores_del_peru/src/pages/tabbar/Destacados.dart';
import 'package:sabores_del_peru/src/pages/tabbar/Postres.dart';
import 'package:sabores_del_peru/src/pages/tabbar/Top.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menú"),
        backgroundColor: const Color.fromRGBO(56, 60, 71, 20),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const DrawerPage(),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "data",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "s/ASDAS",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const TabBar(
              // isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    "Destacados",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Postres",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const Expanded(
                child: TabBarView(
              children: [Destacados(), Postres(), Top()],
            ))
          ],
        ),
      ),
    );
  }
}
