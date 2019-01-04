import 'package:flutter/material.dart';
import 'template.dart';

  void main() {
    //é executado o que está dentro do runApp
    runApp(new MyApp());
  }

  //stateless não precisa gerenciar estado nenhum

  class MyApp extends StatelessWidget{

      Widget build(BuildContext context){
        return new MaterialApp(
          // titulo interno
          title: 'Segundo Exemplo',

          home: new Template()

        );
      }
  }
   