import 'package:flutter/material.dart';
import 'package:project_react/tabs/tabs.dart';

class PageSobre extends StatelessWidget {

  final String title = "Sobre";
  final String texto = "Aplicativo delivery para clientes que desejam ter Água e/ou Gás"
      " com qualidade e praticidade na hora de pedir.";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HomeTab(title),
        Container(
          padding: EdgeInsets.fromLTRB(18.0, 0.0, 18.0, 0.0),
          height: 300.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Material(
                      color: Colors.transparent,
                      child: Text(texto, style: TextStyle(color: Colors.white,
                          fontSize: 20.0, fontWeight: FontWeight.bold)),
                    )
                  ],
              ),
          ),
      ],
    );
  }
}
