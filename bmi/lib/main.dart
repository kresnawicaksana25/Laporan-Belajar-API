//import 'dart:html';

import 'package:flutter/material.dart';
import 'bmi_result.dart';
import 'about_me.dart';

void main(){
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
     '/Halsatu' : (BuildContext context) => new Home(),
      '/Haldua' : (BuildContext context) => new MyProfil(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int tinggi = 0;
  int berat = 0;
  int tahun = 0;

  String _jk="";

  void _pilihJk(String value){
    setState(() {
      _jk = value;
    });
  }

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_list),
        title: new Text('Menghitung Bunga Pinjaman'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.person_outline),
              onPressed: (){
                Navigator.pushNamed(context, '/Haldua');
              },
          )
        ],
      ),

      
                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tahun = int.parse(txt);
                    });
                  },

                  keyboardType: TextInputType.text,
                  maxLength: 4,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Alamat",
                      labelText: "Alamat",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tahun = int.parse(txt);
                    });
                  },

                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: new InputDecoration(
                      hintText: "Masukkan Besar Pinjaman",
                      labelText: "Jumlah",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Tinggi Badan",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                            //filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(

                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Berat Badan",
                            suffix: Text('kg'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                            //filled: true,
                            hintText: 'Berat'),

                      ),
                    ),
                  ],
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),


                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                          builder: (BuildContext) =>
                          new BMIResult(nama_lengkap : _nama.text,tinggi_badan: tinggi, berat_badan: berat, tahun_lahir: tahun, jk: _jk),
                      );
                      Navigator.of(context).push(route);
                      /*
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat)),
                      );
                       */
                    },
                    padding: EdgeInsets.all(10.0),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text(
                      'Hitung BMI',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
