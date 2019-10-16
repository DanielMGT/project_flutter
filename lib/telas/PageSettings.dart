import 'package:flutter/material.dart';
import 'package:project_react/buttons/icon_bt.dart';
import 'package:project_react/tabs/tabs.dart';
import 'package:project_react/telas/PageEditarConta.dart';

class PageSettings extends StatelessWidget {

  final String titulo = "Configurações";
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: <Widget>[
        Scaffold(
          body: Stack(
            children: <Widget>[
              HomeTab(titulo),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(Icons.person, size: 130.0, color: Colors.white),
                  Material(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Daniel", style: TextStyle(color: Colors.white,
                            fontSize: 18.0)),
                        RaisedButton(
                          color: Color.fromARGB(255,25,25,112),
                            child: Text("Editar conta", style: TextStyle(color: Colors.white,
                                fontSize: 15.0, fontWeight: FontWeight.bold)),
                        onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(
                                  builder: (context) => PageEditarConta(),
                                ));
                        },
                        ),
                      ],
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 18.0),
                    height: 150.0,
                    child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            GestureDetector(
                              child: Text("Sair", style: TextStyle(color: Colors.white,
                                  fontSize: 18.0, fontWeight: FontWeight.bold)),
                              onTap: () {

                              },
                            )
                          ],
                    ),
                  )
                ],
              )
            ],
          )
        )
      ],
    );
  }
}
