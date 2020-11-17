import 'package:flutter/material.dart';

class detailmissionPage extends StatelessWidget {
   final String jeneng= 'Beli Botol Minum Tidak Sekali Pakai';
  final String ttl='Easy';
  final String bio= 'Indonesia adalah penyumbang sampah plastik kedua terbanyak didunia! Kebanyakan plastik dipakai hanya beberapa kali saja, kemudian dibuang begitu saja ke TPA atau diolah dengan cara didaur ulang atau dibakar dengan insinerator.Daur ulang memang memiliki dampak lingkungan yang paling minim, namun tidak semua plastik dapat di daur ulang, terlebih plastik dengan kualitas yang rendah. Daur ulang plastik juga memerlukan energi yang besar, sehingga menghasilkan emisi karbon yang cukup tinggi.';
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        title: Text(this.jeneng,
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
                     child:Text(this.ttl,
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
              this.bio,
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