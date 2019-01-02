   import 'package:flutter/material.dart';
 

      //stateful pode mudar estados da aplicaçao
  class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    int _cursos = 0;
    int _selectedIMage = 0;
    var _images= [
      'images/1.png',
      'images/2.png',
      'images/3.png',
      'images/4.png',
      'images/5.png',
      'images/6.png',
    ];
    @override
    Widget build(BuildContext context) {
      return  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              //sendo children pode ter mais de um componente
              children: <Widget>[
                //adicionando as imagens
                Image.asset(_images[_selectedIMage],
                height: 100.0,
                //CrossAxisAlignment.stretch              
                ),
                
                Text('Cursos',
                 textAlign: TextAlign.center,
                 style: Theme.of(context).textTheme.display3,
                //  style: TextStyle(
                //    color: Colors.black,
                //    decoration: TextDecoration.none,
                //    fontSize: 30
                //  ),]
                ),
                Text('Você completou $_cursos', 
                textAlign: TextAlign.center,
                 style: Theme.of(context).textTheme.display1.copyWith(fontWeight: FontWeight.w300)
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: FloatingActionButton(
                  onPressed: (){
                  //verifica se mudou a variavel, renderiza o que é dinamico
                  setState(() {
                  _cursos ++;    

                  //garante que a divisão por um double vai ser por um inteiro
                  int selectedImage = _cursos ~/2;
                  if(selectedImage <= 4){
                    _selectedIMage = selectedImage;

                  }
                  //sempre que a imagem chegar no ultmo valor do array, garante que será exibida a aimg 6
                  if(selectedImage >4){
                    _selectedIMage =5;
                  }

                                    });
                },
                child: Icon(Icons.add)
                ,),)
              ],
            );
           
    }
  }
  