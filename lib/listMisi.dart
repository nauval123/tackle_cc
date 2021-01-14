import 'package:flutter/material.dart';
import 'package:tackle_cc/component.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListmisiPage extends StatefulWidget {
  final String tingkat;

  ListmisiPage({this.tingkat});
  @override
  _ListmisiPageState createState() => _ListmisiPageState(this.tingkat);
}

class _ListmisiPageState extends State<ListmisiPage> {
  // List <String> misi =['Menggunakan Botol pribadi', 'Membuang sampah ditempatnya 3x', 'Menanam Pohon ditaman',];
  String url_daftar_misi;
  List misi;
   
  void tingkatan(String tingkat){
     if(tingkat == 'easy'){
       this.url_daftar_misi="http://192.168.0.126:8000/api/misiez";
     } else if(tingkat == "medium"){
       this.url_daftar_misi="http://192.168.0.126:8000/api/misimed";
     } else if(tingkat == "hard"){
       this.url_daftar_misi="http://192.168.0.126:8000/api/misihard";
     }
  }

  Future<String> ambilData() async {
    var res = await http.get(Uri.encodeFull(url_daftar_misi), headers: { 'accept':'application/json' });
    setState(() {
      var content = json.decode(res.body);
      misi = content;
    });
    return 'success!';
  }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.tingkatan(this.tingkats);
    this.ambilData();
  }
  final String tingkats;
  _ListmisiPageState(this.tingkats);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text("daftar misi",
        style: TextStyle(
          fontSize: 13,
        ),),
        centerTitle: true,
      ),
      body:Container(
              height: MediaQuery.of(context).size.height*0.575,
              child: misi == null ? Center(child: CircularProgressIndicator(),):ListView.builder(
                padding: EdgeInsets.all(20.0),
                itemCount: misi == null ? 0:misi.length,
                itemBuilder: (BuildContext context,i)  {
                  return Column(
                    children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(8.0),
                        child: Center(
                          child: CardDetails(misi[i]['judul_misi'],misi[i]['tingkat'],misi[i]['deskripsi'],misi[i]['status_misi'],misi[i]['poin'])
                        ),
                      ),
                    ],
                  ); 
                },
              ),
            )
            );
  }
  }
