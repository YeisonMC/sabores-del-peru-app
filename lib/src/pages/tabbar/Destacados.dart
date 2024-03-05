import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Destacados extends StatelessWidget {
  const Destacados({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.amber,
          child: Column(
            children: const <Widget>[Text("data")],
          ),
        ),
      ),
    );
  }
}
