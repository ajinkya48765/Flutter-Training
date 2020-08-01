

import 'package:flutter/material.dart';

myApp(){
  var funTitle = Text("My Card",
   textAlign: TextAlign.center ,
   style: TextStyle(color: Colors.black),
   );

  var leadicon = Icon(Icons.menu, color: Colors.black);

  var funappBar = AppBar(
    title: funTitle,
    leading: leadicon,
    backgroundColor: Colors.amber.shade400,
  );
 
  var funScaffold = Scaffold(
    appBar: funappBar,
    body: Image.network("https://raw.githubusercontent.com/ajinkya48765/Flutter-Training/master/risewhite.png",
    color: Colors.grey,),
  );

  return MaterialApp(home: funScaffold);
}