import 'package:flutter/material.dart';



class ContadorPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_ContadorPageState(); 
  
}

class _ContadorPageState extends State <ContadorPage>{

int _contar=0;
  TextStyle estilo = new TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
  
  return Scaffold(
appBar: AppBar(
  centerTitle: true,
  title: Text("Contador"),
),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Número de clicks",style: estilo,),
      SizedBox(height: 10,),
      Text("$_contar",style: estilo,),
    ],

  )
),
floatingActionButton: _Botones()


  );
}

Widget _Botones(){
return Row(

mainAxisAlignment: MainAxisAlignment.end,
children: [
SizedBox(width: 30,),
FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero),),
Expanded(child: SizedBox()),
FloatingActionButton(onPressed: _info, child: Icon(Icons.info),),
SizedBox(width: 15,),
FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove),),
SizedBox(width: 15,),
FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add),),


],
);
}

void _agregar()=>setState(()=>_contar++);

void _reset()=>setState(()=>_contar=0);

void _sustraer()=>setState(()=>_contar--);

void _info()=>print("Omar André Gutiérrez Cardona");
}