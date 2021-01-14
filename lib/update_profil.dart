import 'package:flutter/material.dart';
import 'package:tackle_cc/profil.dart';

class UbahprofilPage extends StatefulWidget {
  @override
  _UbahprofilPageState createState() => _UbahprofilPageState();
}

class _UbahprofilPageState extends State<UbahprofilPage> {

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
         title:Text('Ubah Profil'),
         backgroundColor: Colors.green[400],
         centerTitle: true,
         
       ),
    body:Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                 Container(
                    width: 500,
                    height: 370,
                    child: Card(
                      margin: const EdgeInsets.all(5),
                      elevation: 5,
                      color: Colors.green[400],
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.supervised_user_circle,
                              color: Colors.green[800],
                              size: 70,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Masukkan Nama',
                                labelText: "username: ",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                 hintText: 'Masukkan Email',
                                labelText: "Email: ", 
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password: ",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                    Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,  right: 15.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: RaisedButton(
                                            onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ProfilPage()));
                                            },
                                            shape: RoundedRectangleBorder(
                                              borderRadius:BorderRadius.circular(80),
                                            ),
                                            padding: const EdgeInsets.all(0),
                                            child: 
                                            Ink(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: <Color>[
                                                    Color(0xFF9CCC65),
                                                    Color(0xFF558B2F)
                                                  ],
                                                ),
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(80.0),
                                                ),
                                              ),
                                              child:Container(
                                              constraints: const BoxConstraints(
                                                minWidth: 150.0 ,
                                                minHeight: 36.0,
                                              ),
                                              alignment: Alignment.center,
                                              child:  Text(
                                                "update",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                ),
                                            ) 
                                            ),
                                          ),
                                        ),
                                  ),
                              ],
                            ), 
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ) 
          ),
        ],
      ),
  );
}
}