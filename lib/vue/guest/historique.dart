import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class historique extends StatefulWidget {
  const historique({super.key});

  @override
  State<historique> createState() => _historiqueState();
}

class _historiqueState extends State<historique> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Historique'),
          titleTextStyle: TextStyle(color: Colors.redAccent),
        ),
        body: Container(
          child: Column(
            children: [
              Text('bonjour\n'.toUpperCase()),
            ],
          ),
        ),
      ),
    );
  }
}
