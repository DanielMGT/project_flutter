import 'package:flutter/material.dart';
import 'package:project_react/tabs/tabs.dart';

class PagePagamento extends StatefulWidget {
  @override
  _PagePagamentoState createState() => _PagePagamentoState();
}

class _PagePagamentoState extends State<PagePagamento> {
  final String titulo = "Pagamento";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HomeTab(titulo),
        Container(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text("Formas de pagamento",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              RaisedButton(
                color: Color.fromARGB(255, 25, 25, 112),
                child: Text("Cartão de Débito ou Crédito",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onPressed: () {

                },
              ),
              RaisedButton(
                color: Color.fromARGB(255, 25, 25, 112),
                child: Text("Dinheiro",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
                onPressed: () {

                },
              )
            ],
          ),
        )
      ],
    );
  }
}
