import 'package:flutter/material.dart';

void main() {
  //comando para rodar o App, passa o widget "MaterialAPP"
  //As telas tbem são widget
  runApp(MaterialApp(
    title: "Contador de Pessoas",

    // o Column permite colocar itens um embaixo do outro
    home: Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
        mainAxisAlignment: MainAxisAlignment.center, // texto alinhado ao centro
        children: <Widget>[
          //children pode ter mais de uma ação

          Text(
            "Pessoas: 0",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          Row(
            //Coloca os itens um do lado do outro
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding( //permite centralizar os
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),

          Text(
            "Pode entrar!",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 30.0),
          ),
        ])
      ],
    ),
  ));
}
