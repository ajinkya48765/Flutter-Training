import 'package:flutter/material.dart';

myApp(){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade300,
        title: Text(
          "AudioPlayer",
          style: TextStyle(
            color: Colors.white
          ) ,
          ),
        leading: Icon(
          Icons.music_video,
          color: Colors.deepOrangeAccent,
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.yellow.shade100,
            border: Border.all(
              color: Colors.black,
            ),
          ),
          width : double.infinity,
          height: 300,
          //color: Colors.yellow.shade200,
        )
      ),
    ),
  );
}