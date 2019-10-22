import 'package:flutter/material.dart';
import 'package:project_react/models/UserModel.dart';
import 'package:project_react/telas/PageCriarConta.dart';
import 'package:scoped_model/scoped_model.dart';

class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  @override

  final _formKey = GlobalKey<FormState>();

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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 25, 112),
        actions: <Widget>[
          FlatButton(
            child: Text("CRIAR CONTA", style: TextStyle(color: Colors.white,
                fontSize: 15.0)),
            onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => PageCriarConta()
                ));
            },
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          _buildBodyBack(),
             ScopedModelDescendant<UserModel>(
               builder: (context, child, model){
                  if(model.isLoading){
                    return Center(child: CircularProgressIndicator(),);
                  }

                  return Form(
                    key: _formKey,
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(8.0, 60.0, 8.0, 0.0),
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
                        SizedBox(height: 40.0),
                        TextFormField(
                            decoration: InputDecoration(
                                icon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 25.0
                                ),
                                labelText: "Usuário",
                                labelStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0
                                )
                            ),
                            // ignore: missing_return
                            validator: (text){
                              if(text.isEmpty || !text.contains("@")){
                                return "Email inválido";
                              }
                            }
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              icon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 25.0
                              ),
                              labelText: "Senha",
                              labelStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0
                              )
                          ),
                          obscureText: true,
                          validator: (text){
                            if(text.isEmpty || text.length < 6){
                              return "Senha inválida";
                            }
                          },
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FlatButton(
                            child: Text("Esqueci minha senha",
                                style: TextStyle(color: Colors.white,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold)),
                            padding: EdgeInsets.zero,
                            onPressed: () {

                            },
                          ),
                        ),
                        SizedBox(
                          height: 45.0,
                          child: RaisedButton(
                            color: Colors.transparent,
                            child: Text("Entrar", style: TextStyle(color: Colors.white,
                                fontSize: 20.0)),
                            onPressed: () {
                              if(_formKey.currentState.validate()){

                              }
                              model.signIn();
                            },
                          ),
                        )
                      ],
                    ),
                  );
               }
             ),
        ],
      ),
    );
  }
}
