import 'package:flutter/material.dart';

import 'package:sabores_del_peru/src/pages/LoginPage.dart';
import 'package:sabores_del_peru/src/pages/breakfast/BreakfastPage.dart';
import 'package:sabores_del_peru/src/pages/home/HomePage.dart';

class App extends StatelessWidget {
  // const App({super.key});
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi App enrutador",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const HomePage(),
        "/home/breakfastpage": (context) => const BreakfastPage()
      },
    );
  }
}
