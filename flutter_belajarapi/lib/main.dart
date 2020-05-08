import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/tambah_data_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.white,

      ),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: IconButton(
          icon : Icon(Icons.add),
          color: Colors.white,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TambahScreen(),
              ));
          },
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Member Grup",
        ),
        centerTitle: true,
      ),
      body: HomeScreen(),
    );
  }
}
