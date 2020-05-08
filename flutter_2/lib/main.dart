import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          leading: Icon(Icons.web),
          title: Text('Aplikasi wicak'),
          actions: <Widget>[Icon(Icons.thumb_up),Icon(Icons.thumb_down)],
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Image(image:AssetImage('assets/wicak.jpg'),),
              Text('Made Kresna Wicaksana',style:TextStyle(color:Colors.black,fontSize:24.0))
            ],
          )
        )
      )
    )
  );
}
