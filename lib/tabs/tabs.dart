import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  String titulo = '';

  HomeTab(this.titulo);

  Widget build(BuildContext context) {
    Widget _buildBodyBack() => Container(
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
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: Text(titulo),
            centerTitle: false,
            backgroundColor: Color.fromARGB(255, 25, 25, 112),
          ),
          body: Stack(
            children: <Widget>[
              _buildBodyBack(),
            ],
          ),
        )
      ],
    );
  }
}
