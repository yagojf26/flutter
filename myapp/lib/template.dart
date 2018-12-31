import 'package:flutter/material.dart';
import 'package:myapp/pages/homePage.dart';
import 'package:myapp/pages/School.dart';

 

      //stateful pode mudar estados da aplicaçao
  class Template extends StatefulWidget {
    @override
    _TemplateState createState() => _TemplateState();
  }
  
  class _TemplateState extends State<Template> {
    var homePage = new HomePage();
    var schoolPage = new SchoolPage();
    var _selectedPage= 1;
    //adiciona um metodo para trazer as paginas
    var _pages;

    @override
    Widget build(BuildContext context) {
      
      _pages = [
        homePage,
        schoolPage
      ];

      return new Scaffold(
        appBar: AppBar(
          title: Text('App Yago'),
          backgroundColor: Colors.lightGreen,
        ),
        body: _body(),
          //criando o menu e seus botões, será usado um botão de navegação
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              // O botão de navegação exige pelo menos dois bottões de itens 
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
            ],
            // Altera a cor da sobra dos botões do menu
            fixedColor: Colors.lightGreenAccent,

            //fazendo a transição entre as páginas
            currentIndex: _selectedPage,

            //fazendo o Clique dos botões
            onTap: (int index){
              setState(() {
                              _selectedPage = index;
                            });
            },
          ),

      );
    }
    // criou um metodo privado da classe _template
    _body(){
      return Container(
        constraints: BoxConstraints.expand(),
        child: _pages[_selectedPage]
      );
    }
  }
  