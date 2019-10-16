import 'package:flutter/material.dart';
import 'package:project_react/buttons/icon_bt.dart';
import 'package:project_react/tabs/tabs.dart';
import 'package:project_react/telas/PagePagamento.dart';
import 'package:project_react/telas/PageSettings.dart';
import 'package:project_react/telas/PageSobre.dart';


class Page_perfil extends StatefulWidget {
  @override
  _Page_perfilState createState() => _Page_perfilState();
}

class _Page_perfilState extends State<Page_perfil> {

  final String title = "Água & Gás";
  @override
  Widget build(BuildContext context) {
    return Stack(
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
                onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => PagePagamento()
                        ));
                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                  child: TextBtn(Icons.settings, "Configurações"),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PageSettings()
                      ));
                },
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                  child: TextBtn(Icons.add_comment, "Sobre"),
                ),
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context) => PageSobre()
                      ));
                },
              )
            ],
          ),
        )

      ],
    );
  }
}
