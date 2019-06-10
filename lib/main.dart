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
              "Pessoas: 0",
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
                      debugPrint("+1");
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
                      debugPrint("-1");
                    },
                  ), //FlatButton
                ), //Padding
              ], //Widget
            ), //Row
            Text(
              "Pode entrar!",
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
