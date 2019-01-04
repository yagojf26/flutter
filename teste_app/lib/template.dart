import 'package:flutter/material.dart';

//os metodos Stateful podem mudar o estado da aplicação

class Template extends StatefulWidget {
  @override
  _TemplateState createState() => _TemplateState();
}

class _TemplateState extends State<Template> with SingleTickerProviderStateMixin{
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Tela 1'),
    Tab(text: 'Tela 2'),
    // Tab(text: 'Tela 3'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
 void dispose() {
   _tabController.dispose();
   super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //barra no topo do App
      appBar: AppBar(
        title: Text('Lista de Projetos para 2019',
        textAlign: TextAlign.center,
        style: TextStyle(fontFamily: 'Times'),
      
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
        ),
        ),

        
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab){
          return Center(child: Text(tab.text));
        }).toList(),
      ),

      //body: _body(),
    );
  }
// criou um metodo privado da classe _template
//     _body(){
//       return Container(
//         constraints: BoxConstraints.expand(),
        
        
//       );
// }

  
} 