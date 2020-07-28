import 'package:flutter/material.dart';

myApp(){
  var funTitle = Text("My Card", textAlign: TextAlign.center);

  var funappBar = AppBar(
    title: funTitle,
    backgroundColor: Colors.amber.shade400,
  );

  var funScaffold = Scaffold(
    appBar: funappBar,
  );

  return MaterialApp(home: funScaffold);
}