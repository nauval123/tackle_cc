import 'package:flutter/material.dart';
import 'package:tackle_cc/detail_mission.dart';
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


