import 'package:flutter/material.dart';



class HomePage extends StatelessWidget{
 
TextStyle estilo = new TextStyle(fontSize: 25);

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('AppFlutter'),
       centerTitle: true,
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("Número de clicks",style:TextStyle(
             fontSize: 25,
           ),),
           Text("0",style: estilo,),
           
         ],
       )
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.add),

       onPressed: () { 
         print("le picaste we");
        },
     ),
     floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat
   );
 }
}