import 'package:flutter/material.dart';
class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:Text('Profil'),
         backgroundColor: Colors.green[400],
         centerTitle: true,
         leading: InkWell(child:Icon(Icons.login_sharp,)),
         actions: [InkWell(child: Icon(Icons.info_outline_rounded),),Container(width:15)],

       ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2,
              padding: EdgeInsets.only(top:50),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.green[300],
                  Colors.green[500],
                ]), ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: Colors.green[900],
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/pp.png'),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                       Text(
                        'Rizki Aha',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                         Container(
                          height: 5,
                        ),
                        Text(
                        'rizkiseg@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        ),
                        Container(
                          height: 10,
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          // color: Colors.green[500],
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget> [
                             Text(
                        'Pejuang Bumi',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        // Container(
                        //   width:  ,
                        // ),
                          ]
                        )
                      ),
                    ],
                  ),
                  Container(
                    height: 15,
                  ),
                  InkWell(
                        // onTap: ,
                        child: Text('Ubah Profil',
                        style: TextStyle(color: Colors.white,fontSize: 15),),
                      )
                ],
              ),
            ),
            Container(
              height:MediaQuery.of(context).size.height/2,
              // color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}


