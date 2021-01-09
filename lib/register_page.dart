import 'package:flutter/material.dart';
import 'package:tackle_cc/home_page.dart';
import 'package:tackle_cc/login_page.dart';
//halaman register menggunakan stateless
class Registerpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Colors.green,
    body:SingleChildScrollView(child: FormRegister()),
  );
  }
}
//ditampung di widget singlechildscrollview
class FormRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('images/register3.png'),
                  height: 300,
                ),
                //  Image.asset('images/login.png',height: 300,),
                 Container(
                   height: 50,
                   child: Text(
                     'Yuk Daftar menjadi Pejuang Bumi !',
                     style: TextStyle(
                       color: Colors.white60,
                       fontSize: 20
                     ),),
                 ),
                 Container(
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      margin: const EdgeInsets.all(5),
                      elevation: 5,
                      color: Colors.green[200],
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.supervised_user_circle,
                                  color: Colors.blue[500],
                                ),
                                labelText: "username: ",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.blue[500],
                                ),
                                labelText: "Email: ", 
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.security,
                                  color: Colors.blue[500],
                                ),
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
                                        top: 20, bottom: 5, right: 15.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: RaisedButton(
                                            onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomePage()));
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
                                                "Daftar",
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
                                   Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 5, right: 15.0),
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: RaisedButton(
                                            onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Loginpage()));
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
                                                "kembali",
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
                  Container(
                    margin: EdgeInsets.only(top:10,bottom: 10),
                    child:  Text('@Tackle Climate Change',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
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

