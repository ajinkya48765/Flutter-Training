import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return myApp();
  }
}

myApp(){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
    ),
  );
}