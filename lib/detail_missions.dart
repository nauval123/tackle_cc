import 'package:flutter/material.dart';

class DetailmissionsPage extends StatefulWidget {

  final tingkat,judul;

  DetailmissionsPage({this.tingkat,this.judul});

  @override
  _DetailmissionsPageState createState() => _DetailmissionsPageState(this.tingkat,this.judul);
}

class _DetailmissionsPageState extends State<DetailmissionsPage> {
  final String tingkat,judul;
  _DetailmissionsPageState(this.tingkat,this.judul);
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(this.judul,
        style: TextStyle(
          fontSize: 13,
        ),),
        centerTitle: true,
      ),
      body: Card(
        elevation: 8,
        margin: EdgeInsets.all(20),
        child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children:<Widget>[
          Image.network(
          'https://img.freepik.com/free-vector/bottle-water-concept-illustration_114360-2183.jpg?size=338&ext=jpg',
          height: 200.0,
          width: 162.0,
          fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                     padding: EdgeInsets.only(left: 50,right: 50,bottom: 20,top:10),
                     child:Text(this.tingkat,
                  style: TextStyle(
                    color:Colors.grey,
                    fontSize: 20.0,                    
                  ),
                  ) ,
                  ),
                ],
              ),
            ],   
          ),
          Container(
            padding: EdgeInsets.only(left: 50,right: 50,bottom: 20,top:10),
            child: Text(
              'deskripsi misi',
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
}
