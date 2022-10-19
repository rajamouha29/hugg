import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hugg/vue/guest/espace.dart';
import 'package:hugg/vue/guest/historique.dart';
import 'package:hugg/vue/guest/login.dart';

import 'categorie.dart';

class prod extends StatelessWidget {
  const prod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'boutique Raja'.toUpperCase(),
            style: TextStyle(color: Colors.amber),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              titleSection,
              SizedBox(
                height: 20,
              ),
              searchSection,
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: 100,
                color: Colors.amber,
                child: Column(
                  children: [
                    Text('Mes produits'.toUpperCase()),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const MyWidget())));
                        },
                        child: Text('entrez')),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 90,
                      width: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child:
                            Image.network('E:\Animé\Nouveau dossier\10861192'),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              boxSection,
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 500,
                width: 100,
                color: Colors.amber,
                child: Column(
                  children: [
                    Text('Ajout de nouvelles games'.toUpperCase()),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                        onPressed: (() => print('')), child: Text('entrez')),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              removeSection,
              SizedBox(
                height: 20,
              ),
              notificationSection,
            ],
          ),
        ),
      ),
    );
  }
}

/*Widget containerSection = Container(
  padding: EdgeInsets.all(20),
  height: 300,
  width: 100,
  color: Colors.amber,
  child: Column(
    children: [
      Text('Mes produits'.toUpperCase()),
      SizedBox(
        height: 20,
      ),
      ElevatedButton(onPressed: (){
        BuildContext context;
      //  Navigator.push(context, MaterialPageRoute(builder: ((context) =>const espace(title: '',) )));
      }, child: Text('entrez')),
      SizedBox(
        height: 40.0,
      ),
      Container(
        height: 90,
        width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: Image.network('E:\Animé\Nouveau dossier\10861192'),
        ),
      )
    ],
  ),
);*/

Widget boxSection = Container(
    color: Colors.amber,
    height: 300,
    //margin: EdgeInsets.all(1),
    padding: EdgeInsets.all(20),
    child: Column(
      children: [
        Text('historique'.toUpperCase()),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 90,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.network('E:\Animé\Nouveau dossier\historique-copie'),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () => print(historique()),
          child: Text(
            'acceder '.toUpperCase(),
          ),
        )
      ],
    ));
//Widget addSection =
Widget removeSection = Container(
  padding: EdgeInsets.all(20),
  height: 300,
  width: 100,
  color: Colors.amber,
  child: Column(
    children: [
      Text('Enlever une game'.toUpperCase()),
      SizedBox(
        height: 60,
      ),
      ElevatedButton(onPressed: (() => print('')), child: Text('entrez')),
    ],
  ),
);

Widget notificationSection = Container(
  padding: EdgeInsets.all(20),
  height: 300,
  width: 100,
  color: Colors.amber,
  child: Column(
    children: [
      Text('Notifications'.toUpperCase()),
      SizedBox(
        height: 20,
      ),
      Container(
        height: 90,
        width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(0.0),
          child: Image.network(
              'E:\Animé\Nouveau dossier\1 1rwY7JLMGrWVEY-ie8K74A'),
        ),
      ),
      SizedBox(
        height: 60.0,
      ),
      ElevatedButton(onPressed: (() => print('')), child: Text('entrez')),
    ],
  ),
);

Widget titleSection = Container(
  padding: EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Home Page',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      Container(
        height: 50,
        width: 50,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network(
              'https://us.123rf.com/450wm/thesomeday123/thesomeday1231709/thesomeday123170900021/85622928-ic%C3%B4ne-de-profil-avatar-par-d%C3%A9faut-espace-r%C3%A9serv%C3%A9-photo-gris-vecteurs-d-illustrations.jpg?ver=6'),
        ),
      )
    ],
  ),
);

Widget searchSection = Container(
  margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
  decoration: BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(10),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Icon(
        Icons.search,
        color: Colors.grey,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Text(
          'Search',
          style: TextStyle(color: Colors.grey),
        ),
      ),
      Icon(
        Icons.mic_none,
        color: Colors.grey,
      ),
    ],
  ),
);
