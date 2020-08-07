import 'package:flutter/material.dart';
import 'package:task1_audio_player/variables.dart';
import 'package:file_picker/file_picker.dart';
import 'package:audioplayers/audioplayers.dart';
myApp(){
  var filepath , result;
  AudioPlayer audioPlayer = AudioPlayer();
  AudioPlayer.logEnabled = true;
  bool isplaying = false;
  return MaterialApp(
    home: Scaffold(
      backgroundColor: basecolor,
      appBar: AppBar(
        backgroundColor: appbarcolor,
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
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(top:100,left: 50,right: 50, bottom: 40),
              width: double.infinity,
              height: 200,
              //color: Colors.red.shade100,
              child: Image.asset("assets/music.gif"),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                //color: color2,
                border: Border.all(
                  color: Colors.black,
                ),
              ),
              width : double.infinity,
              height: 300,
              child: Column(
                children: <Widget>[   
                  FlatButton(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.play_arrow,
                            size: 35,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(
                              fontSize: 20
                            ),
                            ),
                        ],
                      ),
                    ),
                    onPressed:() async {    
                      if(isplaying == true){
                        print("song already running");  
                      }
                      else
                      {
                        if(filepath == null){
                        print("no song selected");
                        }
                        else{
                          result = await audioPlayer.play(filepath, isLocal: true);
                          isplaying = true;
                        }
                      }                      
                    },   
                  ),
                  FlatButton(
                    child: Container(
                      margin: EdgeInsets.only(left: 100, right: 100, bottom: 50,),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.stop,
                            size: 35,
                          ),
                          Text(
                            "Stop",
                            style: TextStyle(
                              fontSize: 20
                            ),
                            ),
                        ],
                      ),
                    ),
                    onPressed:() async {    
                      if(isplaying == true){
                        audioPlayer.stop();
                        isplaying = false;  
                      }
                      else
                      {
                        if(filepath == null){
                        print("no song selected");
                        }
                        else{
                          print("song is already stopped");
                        }
                      }                      
                      
                    },   
                  ),

                  FlatButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () async {
                      filepath = await FilePicker.getFilePath();
                      result = await audioPlayer.play(filepath, isLocal: true);
                      if(result == 1){
                        isplaying = true;
                      }
                      print(filepath);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.music_note),
                          Text("Choose a song", style: TextStyle(fontSize: 20),),
                        ],
                      ),
                    ),
                    //color: color1,
                  ),
                ],
              ),
              )
          ),
        ],
      ),
    ),
  );
}