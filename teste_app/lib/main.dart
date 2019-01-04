//é preciso importar as dependencias
import 'package:flutter/material.dart';
import 'template.dart';

void main(){

 //é executado o que está dentro do runApp
    runApp(new MyApp());

}


// no stateless não é preciso editar o estado da aplicação
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      // titulo interno
          title: 'Testando o conceito',

          home: new Template()

    );
  }
}