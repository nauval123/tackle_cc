import 'package:flutter/material.dart';
import 'package:tackle_cc/component.dart';

class ListmisiPage extends StatefulWidget {
  final String tingkat;

  ListmisiPage({this.tingkat});
  @override
  _ListmisiPageState createState() => _ListmisiPageState(this.tingkat);
}

class _ListmisiPageState extends State<ListmisiPage> {
  List <String> misi =['Menggunakan Botol pribadi', 'Membuang sampah ditempatnya 3x', 'Menanam Pohon ditaman',];

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
              child: ListView.builder(
                padding: EdgeInsets.all(20.0),
                itemCount: misi.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(8.0),
                        child: Center(
                          child: CardDetails(misi[i],tingkats)
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
