import 'package:flutter/material.dart';

class biscuit extends StatefulWidget {
  const biscuit({super.key});

  @override
  State<biscuit> createState() => _biscuitState();
}

class _biscuitState extends State<biscuit> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('haha!'),
      ),
      body: SingleChildScrollView(
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
                    onPressed: fan(),
                    child: ClipRRect(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlsNbo2E5frJHBOo9p5CTIhCnnbuR0sgtAcPv1VvSxAg&s"),
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
                    onPressed: fan(),
                    child: ClipRRect(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlsNbo2E5frJHBOo9p5CTIhCnnbuR0sgtAcPv1VvSxAg&s"),
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
                    onPressed: fan(),
                    child: ClipRRect(
                      child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlsNbo2E5frJHBOo9p5CTIhCnnbuR0sgtAcPv1VvSxAg&s"),
                    )),
              ],
            )),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    ));
  }
}

fan() async {}
