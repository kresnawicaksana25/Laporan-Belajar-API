import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
          home: Scaffold(

              backgroundColor: Colors.blue,
              appBar: AppBar(
                  title: Text("Aplikasi Foto"),
                  centerTitle: true,
                  backgroundColor: Colors.red,
                  leading: Icon(
                    Icons.photo,
                    color: Colors.white,
                    size: 40,
                  )
              )
              body: PictApp()
      )
    );
  }
}

class PictApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        Image(image:AssetImage('assets/logo.png'),),
      ),
    );
  }
}


