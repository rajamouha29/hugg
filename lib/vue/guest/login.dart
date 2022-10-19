import 'package:flutter/material.dart';
import 'package:hugg/vue/guest/produits.dart';

class login extends StatefulWidget {
  const login({super.key, required String title});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _password = '';
  bool _isSecret = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(children: [
        RichText(
          text: TextSpan(
            text: 'Quand on veut \n '.toUpperCase(),
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'On peut \n'.toUpperCase(),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Form(
          key: _formKey,
          child: Column(
            children: [
              Text('entrez votre mot de passe \n '),
              TextFormField(
                onChanged: (value) => setState(() => _password = value),
                validator: (value) => _password.length < 6
                    ? 'entrez un mot de passe inferieur a 6'
                    : null,
                obscureText: _isSecret,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () => setState(() => _isSecret = !_isSecret),
                        child: Icon(
                          !_isSecret ? Icons.visibility : Icons.visibility_off,
                        )),
                    hintText: 'Ex: arafatmoha25',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0.0),
                        borderSide: BorderSide(color: Colors.grey))),
              ),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: _password.length < 6
                    ? null
                    : () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => prod())));
                          //print(_password);
                        }
                      },
                child: Text('continuer', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ])),
    ));
  }
}
