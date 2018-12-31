// importar as dependencias

import 'package:flutter/material.dart';

void main(){
  //executa o app atravez do runApp
  runApp(new MaterialApp(
    // o titulo não aparece na aplicação, é interno
    title: 'Contador de Cursos',
    home: new Container(
          // o container é preenchido por widgets, a funcão do conter é conter aplicações
      //cor branca 255,255,255,255
      color: Color.fromARGB(255,255,255,255),
      // o chield aceita apenas um
      child: Column(
        // quando se usa o children ele vários itens
        // MainAxisAlignment = centraliza no eixo central, altura
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Wello world Dart Yago!'),
          Text('Bora desenvolver Yago')
        ],
      ),
    )

  ));
}