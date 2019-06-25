import 'package:flutter/material.dart'; 

class ContadorPage extends StatefulWidget {

  @override
  createState() => new _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> { //private class '_' al inicio

  final _estiloTexto  = new TextStyle( fontSize: 30 );
  int _conteo         = 0;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        elevation: 40.0, //degradado hacia abajo
        //backgroundColor: Color(0xFFFF9000),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //"posicionar Column"
          children: <Widget>[
            Text('Número de taps:', style: _estiloTexto,),
            Text( '$_conteo', style: _estiloTexto,),
          ],
        )
      ),
      floatingActionButton: _crearBotones()
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, //ubicacion del btn dentro del scaffold
    );
  }

  Widget _crearBotones(){
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[ 
        SizedBox( width: 30.0 ),
        FloatingActionButton( child: Icon( Icons.exposure_zero ), onPressed: _reset ),
        Expanded( child: SizedBox() ),
        FloatingActionButton( child: Icon( Icons.remove ), onPressed: _sustraer ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon( Icons.add ), onPressed: _agregar ),
        ]
    );
  }

  void _agregar() {
     setState( () => _conteo++ );
  } 

  void _sustraer() {
    if( _conteo > 0)
     setState( () => _conteo-- );
  } 

  void _reset() {
     setState( () => _conteo = 0 );
  } 

}