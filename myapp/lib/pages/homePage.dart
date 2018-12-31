   import 'package:flutter/material.dart';
 

      //stateful pode mudar estados da aplicaçao
  class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //sendo children pode ter mais de um componente
              children: <Widget>[
                Text('Aplicando o conceito de Stateless',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   color: Colors.black,
                   decoration: TextDecoration.none,
                   fontSize: 30
                 ),),
                Text('Aplicando alguns coneitos', textAlign: TextAlign.center,)
              ],
            );
           
    }
  }
  