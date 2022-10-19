import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      "Veuillez ajouter votre game ".toUpperCase(),
                      style: TextStyle(fontSize: 90),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Form(
                        child: Column(
                      children: [
                        Text('categorie'),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(hintText: 'fan'),
                        ),
                        SizedBox(height: 15),
                        Text('prix'),
                        SizedBox(height: 15),
                        TextFormField(
                            decoration: InputDecoration(hintText: '100')),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Quantité'),
                        SizedBox(height: 15),
                        TextFormField(
                            decoration: InputDecoration(hintText: '3')),
                        SizedBox(
                          height: 80,
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Colors.white),
                          label: Text('Ajouter'),
                        ),
                      ],
                    ))
                  ],
                ),
              ),
            )));
  }
}
