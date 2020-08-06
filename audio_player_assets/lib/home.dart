import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';

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
                print("hi");
              },
            child: Card(
              color : Colors.blueGrey,
              child : Image.asset("assets/risewhite.png"),
            ),
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.amberAccent,
                  child: IconButton(
                    icon: Icon(Icons.play_circle_outline , ),
                    onPressed: (){
                      print("Song Played"); 
                      } 
                      
                    ),
                ),
              ),
              Container(
                child: Card(
                  color: Colors.amberAccent,  
                  child: IconButton(
                    icon: Icon(Icons.pause_circle_outline ,),
                    onPressed: (){
                      print("Song Played"); 
                    } 
                  ),
                ),
              )
            ],
          ),
        ], 
      ),
    )
  );
}