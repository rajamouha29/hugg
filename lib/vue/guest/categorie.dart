import 'package:flutter/material.dart';
import 'package:hugg/vue/guest/produits.dart';

import 'espace.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Text("categories d'article".toUpperCase()),
          SizedBox(height: 100.0),
          Container(
            child: Column(children: [
              Text(
                "Fans".toUpperCase(),
                style: TextStyle(fontSize: 90),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => espace(
                                  title: "",
                                )));
                  },
                  child: ClipRRect(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlsNbo2E5frJHBOo9p5CTIhCnnbuR0sgtAcPv1VvSxAg&s"),
                  )),
            ]),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: Column(children: [
              Text(
                "Biscuits".toUpperCase(),
                style: TextStyle(fontSize: 90),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => espace(
                                  title: "",
                                )));
                  },
                  child: ClipRRect(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlsNbo2E5frJHBOo9p5CTIhCnnbuR0sgtAcPv1VvSxAg&s"),
                  )),
            ]),
          ),
        ],
      )),
    )));
  }
}
