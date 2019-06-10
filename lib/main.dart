import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        title: "Contador de Pessoas",
        home: Stack(
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
                        onPressed: () {},
                      ), //FlatButton
                    ), //Padding
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FlatButton(
                        child: Text(
                          "-1",
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ), //Text
                        onPressed: () {},
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
        ) // Stack
        ),
  ); //MaterialApp
}
