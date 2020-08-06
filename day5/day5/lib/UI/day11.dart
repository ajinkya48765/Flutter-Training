import 'package:flutter/material.dart';

day11(){
  var text;
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("ASK "),
      ), 
      body: Center(
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.blueGrey.shade100,
          margin: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
             Padding(
               padding: const EdgeInsets.all(20),
               child: TextField(           
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.redAccent.shade400,
                      ),
                    ),
                    hintText: 'Enter value here'
                  ),
                  onChanged:(value){
                    text = value;
                  } ,
                ),
             ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: FlatButton(
                  onPressed: (){
                    print(text);
                  },
                  color: Colors.amber,
                  padding: EdgeInsets.all(20),
                  child: Text("Submit"),
                  ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
