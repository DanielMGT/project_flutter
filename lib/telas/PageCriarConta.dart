import 'package:flutter/material.dart';

class PageCriarConta extends StatefulWidget {
  @override
  _PageCriarContaState createState() => _PageCriarContaState();
}

class _PageCriarContaState extends State<PageCriarConta> {
  @override

  final _formKey = GlobalKey<FormState>();


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

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 25, 25, 112),
        title: Text("Criar conta", style: TextStyle(color: Colors.white)),
      ),
      body: Stack(
            children: <Widget>[
              _buildBodyBack(),
              Form(
                key: _formKey,
                child: ListView(
                  padding: EdgeInsets.all(12.0),
                  children: <Widget>[
                    TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(
                                Icons.accessibility,
                                color: Colors.white,
                                size: 25.0
                            ),
                            labelText: "Nome Completo:",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0
                            )
                        ),
                        keyboardType: TextInputType.text,
                        // ignore: missing_return
                        validator: (text){
                          if(text.isEmpty || !text.contains("@")){
                            return "Nome inválido";
                          }
                        }
                    ),
                    SizedBox(height: 12.0),
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
                    SizedBox(height: 12.0),
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
                      keyboardType: TextInputType.text,
                      // ignore: missing_return
                      validator: (text){
                        if(text.isEmpty || text.length < 6){
                          return "Senha inválida";
                        }
                      },
                    ),
                    SizedBox(height: 12.0),
                    TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(
                                Icons.add_location,
                                color: Colors.white,
                                size: 25.0
                            ),
                            labelText: "Endereço",
                            labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0
                            )
                        ),
                        // ignore: missing_return
                        keyboardType: TextInputType.text,
                        validator: (text){
                          if(text.isEmpty || !text.contains("@")){
                            return "Endereço inválido";
                          }
                        }
                    ),
                    SizedBox(height: 18.0),
                    SizedBox(
                      height: 45.0,
                      child: RaisedButton(
                        color: Colors.transparent,
                        child: Text("Criar Conta", style: TextStyle(color: Colors.white,
                            fontSize: 20.0)),
                        onPressed: () {
                          if(_formKey.currentState.validate()){

                          }
                        },
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
