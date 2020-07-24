import 'package:flutter/material.dart';

main(){
  runApp(myApp());
}

myApp(){

  var myhome = Scaffold(
    appBar: myBar(),
    body: Image.network("https://github.com/nikhil5876/images/blob/master/risewhite.png?raw=true"),
  );
  
  var design = MaterialApp(
    home : myhome,
  );

  return design;
}

myBar(){
  var myAppTitle = Text(
    "Photo Frame !!!",
    textAlign: TextAlign.center,
    );
  
  var myleadIcon = Icon(Icons.arrow_forward,);

  var act1 = Icon(Icons.bookmark,);
  

  var onact1 = IconButton(icon: act1, onPressed: onclickact1);

  var myBar = AppBar(
    title: myAppTitle,
    backgroundColor: Colors.teal.shade300,
    leading: myleadIcon,
    actions: <Widget>[onact1,],
  );
  return myBar;
}

mybody(){
  var bodytext = Center(
    child: Text("Frame"),
  );
  return bodytext;
}

onclickact1(){
  print("Bookmark Clicked >>> ");
}