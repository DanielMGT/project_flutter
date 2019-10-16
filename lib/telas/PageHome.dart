import 'package:flutter/material.dart';
import 'package:project_react/tabs/tabs.dart';
import 'package:project_react/telas/PagePerfil.dart';

class Page_home extends StatefulWidget {
  @override
  Home createState() => Home();
}

class Home extends State<Page_home>{
  final _pageController = PageController();
  final String title = "Água & Gás";
  int _cIndex = 0;

  void _tapPage(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(title),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _cIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255,65,105,225),
            items: [
              BottomNavigationBarItem(
                  icon:
                      IconButton(icon: Icon(Icons.home,
                          color: Color.fromARGB(255,25,25,112)),
                          onPressed: (){
                        
                          },
                      ),
                      title: new Text('Home')
              ),
              BottomNavigationBarItem(
                  icon:
                      IconButton(icon: Icon(Icons.list,
                          color: Color.fromARGB(255,25,25,112)),
                          onPressed: (){
                        
                          },
                      ),
                      title: new Text('Produtos')
              ),
              BottomNavigationBarItem(
                  icon:
                      IconButton(icon: Icon(Icons.playlist_add_check,
                          color: Color.fromARGB(255,25,25,112)),
                          onPressed: (){

                          },
                      ),
                  title: new Text('Meus Produtos'),
              ),
              BottomNavigationBarItem(
                  icon:
                    IconButton(icon: Icon(Icons.person,
                        color: Color.fromARGB(255, 25, 25, 112)),
                        onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(
                              builder: (context) => Page_perfil()
                            ));
                        },
                    ),
                  title: new Text("Perfil"),
              )
            ],
            onTap: (index){
              _tapPage(index);
            },
          ),
        )
      ],

    );
  }
}
