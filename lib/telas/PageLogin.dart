import 'package:flutter/material.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack() =>
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 25, 25, 112),
                  Color.fromARGB(255, 65, 105, 225),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
        );

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _buildBodyBack(),
          SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 140.0,
                ),
                Material(
                  color: Colors.transparent,
                  child: Text("Água & Gás", textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 100.0),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Usuário",
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.0),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.white),
                      icon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      )),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  color: Color.fromARGB(255, 25, 25, 112),
                  child: Text("Entrar", textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
                  onPressed: () {

                  },
                ),
                SizedBox(height: 20.0),
                Material(
                  color: Colors.transparent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      GestureDetector(
                          child: Text("Ainda não é cadastrado?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold)),
                        onTap: () {

                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
