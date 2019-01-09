import 'package:flutter/material.dart';

void main() {
  //comando para rodar o App, passa o widget "MaterialAPP"
  //As telas tbem são widget
  runApp(MaterialApp(
      title: "Contador de Pessoas",

      // o Column permite colocar itens um embaixo do outro
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //declarando as variaveis internas
  int _people = 0;
  String _infoText = "Pode Entrar!";

  //metodo interno
  void _changePeople(int delta) {
    //muda o estado e re-desenha a tela
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Tem fantasmas ai!";
      } else if (_people <= 10) {
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
          //imagem de fundo
          "images/restaurante.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
            // coloca os componentes um embaixo do outro
            mainAxisAlignment:
                MainAxisAlignment.center, // texto alinhado ao centro
            children: <Widget>[
              //children pode ter mais de uma ação

              Text(
                "Pessoas: $_people",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),

              Row(
                //Coloca os itens um do lado do outro
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    //permite centralizar os componentes
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {
                        _changePeople(1);
                        //função anonima
                        //debugPrint("+1");
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white),
                      ),
                      onPressed: () {
                        //função anonima
                        //debugPrint("-1");
                        _changePeople(-1);
                      },
                    ),
                  ),
                ],
              ),

              Text(
                _infoText,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0),
              ),
            ])
      ],
    );
  }
}
