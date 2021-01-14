import 'package:flutter/material.dart';
// halam detail misi dimana di extend dari stateful widget
class DetailmissionsPage extends StatefulWidget {

  final tingkat,judul,deskripsi,point,status;

  DetailmissionsPage({this.tingkat,this.judul,this.deskripsi,this.point,this.status,});

  @override
  _DetailmissionsPageState createState() => _DetailmissionsPageState(this.tingkat,this.judul,this.deskripsi,point,status);
}

class _DetailmissionsPageState extends State<DetailmissionsPage> {
  final String tingkat,judul,deskripsi;
  int status;
  final  int point;
  _DetailmissionsPageState(this.tingkat,this.judul,this.deskripsi,this.point,this.status);
 

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
          'https://www.jing.fm/clipimg/detail/130-1309960_green-day-clipart-bumi-reduce-reuse-recycle-transparent.png',
          height: 200.0,
          width: 250.0,
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
            child:Column(
              children: [
                Text(this.deskripsi,
                  style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/6,
                ),
                RaisedButton(
                  child: new Text('Sudah terlaksana'),
                  textColor: Colors.white,
                  color: this.status == 1 ? Colors.green[200] : Colors.grey,
                  onPressed: () => {
                    setState(() {
                      this.status == 1? this.status= 0 : this.status=  1;
                    })
                  },
                )
              ],
            ),
            
          ),
          
        ],
      ),
    ),
    );
  }
}
