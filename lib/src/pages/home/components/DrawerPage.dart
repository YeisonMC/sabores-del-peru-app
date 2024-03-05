import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sabores_del_peru/src/pages/breakfast/BreakfastPage.dart';
import 'package:sabores_del_peru/src/pages/home/HomePage.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("El Yeissen"),
            accountEmail: const Text("saboresperuanos.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                    "https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?cs=srgb&dl=pexels-simon-robben-614810.jpg&fm=jpg"),
              ),
            ),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(56, 60, 71, 20),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.45),
                    BlendMode.multiply,
                  ),
                  image: const NetworkImage(
                      "https://i.pinimg.com/564x/dd/de/b8/dddeb835026db89a0874bd490ffa8042.jpg"),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.breakfast_dining),
            title: const Text("Desayunos"),
            onTap: () {
              // Navigator.of(context).pushNamed("/home/breakfastpage");
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const BreakfastPage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.lunch_dining),
            title: const Text("Almuerzo"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.dinner_dining),
            title: const Text("Cena"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text("Cerrar sesión"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
