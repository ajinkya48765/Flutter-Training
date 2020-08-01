import 'package:flutter/material.dart';

myApp(){
  
   
  return MaterialApp(
    home : Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 450,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: RaisedButton(
              onPressed: (){
                print("hi")
              },
            child: Card(
              color : Colors.blueGrey,
              child : Text("HELLLLLO"),
            ),
            )
          ),
          Container(
            child: IconButton(icon: playbutton, onPressed: null),
          )
        ],
        
      ),
    )
  );
}