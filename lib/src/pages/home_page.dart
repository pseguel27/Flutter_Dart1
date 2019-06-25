import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estiloTexto = new TextStyle( fontSize: 30 );
  final conteo      = 10;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 40.0, //degradado hacia abajo
        //backgroundColor: Color(0xFFFF9000),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //"posicionar Column"
          children: <Widget>[
            Text('Número de clicks:', style: estiloTexto,),
            Text( '$conteo', style: estiloTexto,),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: (){
          //conteo = conteo
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //ubicacion del btn dentro del scaffold
    );
  }

}