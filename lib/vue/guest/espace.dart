import 'package:flutter/material.dart';

// ignore: camel_case_types
class espace extends StatefulWidget {
  const espace({super.key, required String title});

  @override
  State<espace> createState() => _espaceState();
}

// ignore: camel_case_types
class _espaceState extends State<espace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('haha!'),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Container(
                child: Column(
              children: [
                Text('prix: 100'),
                ElevatedButton(
                    onPressed: () {},
                    child: ClipRRect(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF2xvXphx4vEL0PWZ7-T-Lvc3ALsDtHIEJWGN10sDD_Q&s'),
                    )),
              ],
            )),
            SizedBox(
              height: 20.0,
            ),
            Container(
                child: Column(
              children: [
                Text('prix: 200'),
                ElevatedButton(
                    onPressed: () {},
                    child: ClipRRect(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF2xvXphx4vEL0PWZ7-T-Lvc3ALsDtHIEJWGN10sDD_Q&s'),
                    )),
              ],
            )),
            SizedBox(
              height: 20.0,
            ),
            Container(
                child: Column(
              children: [
                Text('prix: 400'),
                ElevatedButton(
                    onPressed: () {},
                    child: ClipRRect(
                      child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF2xvXphx4vEL0PWZ7-T-Lvc3ALsDtHIEJWGN10sDD_Q&s'),
                    )),
              ],
            )),
          ],
        ),
      )),
    ));
  }
}
