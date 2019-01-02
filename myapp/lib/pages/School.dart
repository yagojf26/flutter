import 'package:flutter/material.dart';

class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Visite: ',
         textAlign: TextAlign.center,
         style: Theme.of(context).textTheme.display3,),
        RaisedButton(
          child: Text('schoolofnet.com',
           textAlign: TextAlign.center,),
           onPressed: (){
             //faz uma ação
             
           },
        )

      ],
    );
  }
}