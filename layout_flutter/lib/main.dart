import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter ClipRRect",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Flutter ClipRRect"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.network(
                'https://mahasiswa.undiksha.ac.id/data/foto/1c5071f9361827525a2209dae6a636ec20180721020708.jpg',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 50.0,),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Image.network(
                'https://mahasiswa.undiksha.ac.id/data/foto/1c5071f9361827525a2209dae6a636ec20180721020708.jpg',
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}