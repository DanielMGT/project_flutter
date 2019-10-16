import 'package:flutter/material.dart';

class TextBtn extends StatelessWidget {

  final IconData icon;
  final String text;

  TextBtn(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        child: Container(
          child: Row(
            children: <Widget>[
              Icon(
                icon,
                size: 22.0,
                color: Colors.white,
              ),
              SizedBox(width: 30.0),
              Text(
                text,
                style: TextStyle(color: Colors.white,
                    fontSize: 22.0, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
