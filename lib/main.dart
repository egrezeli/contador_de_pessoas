import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: "Contador de Pessoas",
        home: Home())); //MaterialApp
}

class Home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode Entrar!";

  void _changePeople(int delta){
    setState(() {
      _people += delta;

      if (_people < 0){
        _infoText = "Mundo invertido?!";
      } else if (_people <= 10){
        _infoText = "Pode Entrar!";
      } else {
        _infoText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ), //Text
                    onPressed: () {
                      _changePeople(1);
                    },
                  ), //FlatButton
                ), //Padding
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ), //Text
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ), //FlatButton
                ), //Padding
              ], //Widget
            ), //Row
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        ) //Column
      ],
    ); // Stack
  }
}
