import 'package:flutter/material.dart';
import 'package:tackle_cc/detail_mission.dart';
import 'package:tackle_cc/detail_missions.dart';
//formlogin 

//komponen cardDetai
// ignore: must_be_immutable
class CardDetail extends StatelessWidget {
 String title;

  CardDetail(String input){
    this.title= input;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.all(5),
    elevation: 5,
    child: ListTile(
      leading: Icon(Icons.accessibility_new_rounded,color: Colors.green,),
      title: Text(
        title,
        style: TextStyle(fontSize: 12,
        fontWeight: FontWeight.bold),
      ),
      subtitle: Text('easy'),
      trailing: Container(
        child: FlatButton.icon( 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) =>DetailmissionPage()));
          }, 
          icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,),
           label: Text('detail',style: TextStyle(color: Colors.green),),
      )
      ),      
    )
    );
  }
}

// ignore: must_be_immutable
class CardDetails extends StatelessWidget {
 String judul,tingkat;

  CardDetails(String input,tingkat){
    this.judul= input;
    this.tingkat=tingkat;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.all(5),
    elevation: 5,
    child: ListTile(
      leading: Icon(Icons.accessibility_new_rounded,color: Colors.green,),
      title: Text(
        judul,
        style: TextStyle(fontSize: 12,
        fontWeight: FontWeight.bold),
      ),
      subtitle: Text(tingkat),
      trailing: Container(
        child: FlatButton.icon( 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) =>DetailmissionsPage(tingkat:this.tingkat, judul:this.judul)));
          }, 
          icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,),
           label: Text('detail',style: TextStyle(color: Colors.green),),
      )
      ),      
    )
    );
  }
}
