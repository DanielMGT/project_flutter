import 'package:flutter/material.dart';
import 'package:project_react/models/UserModel.dart';
import 'package:project_react/telas/PageHome.dart';
import 'package:project_react/telas/PageLogin.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MaterialApp(
      home: Home()
  ));
}

  class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Color.fromARGB(255,65,105,225)
        ),
        debugShowCheckedModeBanner: false,
        home: PageLogin(),
      ),
    );
  }
}

