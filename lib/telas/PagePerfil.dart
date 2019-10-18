import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:project_react/buttons/icon_bt.dart';
import 'package:project_react/tabs/tabs.dart';
import 'package:project_react/telas/PageHome.dart';
import 'package:project_react/telas/PagePagamento.dart';
import 'package:project_react/telas/PageSettings.dart';
import 'package:project_react/telas/PageSobre.dart';

class Page_perfil extends StatefulWidget {
  @override
  _Page_perfilState createState() => _Page_perfilState();
}

class _Page_perfilState extends State<Page_perfil> {
  int _cIndex = 0;

  void _tapPage(index) {
    setState(() {
      _cIndex = index;
    });
  }

  final String title = "Água & Gás";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            child: Scaffold(
          body: Stack(
              children: <Widget>[
                HomeTab(title),
                Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15.0, 200.0, 0.0, 0.0),
                            child: TextBtn(Icons.attach_money, "Forma de pagamento"),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PagePagamento()));
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                            child: TextBtn(Icons.settings, "Configurações"),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PageSettings()));
                          },
                        ),
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                            child: TextBtn(Icons.add_comment, "Sobre"),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => PageSobre()));
                          },
                        ),
                      ]),
                ),
              ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _cIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 65, 105, 225),
            items: [
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.home,
                        color: Color.fromARGB(255, 25, 25, 112)),
                    onPressed: () {
                      prefix0.Navigator.pop(context);
                    }
                  ),
                  title: new Text('Home')),
              BottomNavigationBarItem(
                  icon: IconButton(
                    icon: Icon(Icons.list,
                        color: Color.fromARGB(255, 25, 25, 112)),
                    onPressed: () {},
                  ),
                  title: new Text('Produtos')),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.playlist_add_check,
                      color: Color.fromARGB(255, 25, 25, 112)),
                  onPressed: () {},
                ),
                title: new Text('Meus Produtos'),
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.person,
                      color: Color.fromARGB(255, 25, 25, 112)),
                  onPressed: () {},
                ),
                title: new Text("Perfil"),
              )
            ],
            onTap: (index) {
              _tapPage(index);
            },
          ),
        )),
      ],
    );
  }
}
