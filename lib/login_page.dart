import 'package:flutter/material.dart';
import 'package:tackle_cc/home_page.dart';
import 'package:tackle_cc/register_page.dart';

class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.green,
    body:SingleChildScrollView(child: FormLogin()),
  );
 } 
}

class FormLogin extends StatelessWidget {
  // const FormLogin({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Container(
          //   margin: EdgeInsets.only(top:10),
          //   height: MediaQuery.of(context).size.height/2,
          //   width: MediaQuery.of(context).size.width,
          //   child: Image.asset('images/login.png')
          // ),
          Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                 Image.asset('images/login.png',height: 300,),
                 Container(
                   height: 50,
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
                              obscureText: true,
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
                                                "Login",
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
                                  top: 20, bottom: 5, right: 15.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: InkWell(
                                        child: Text(
                                          "Daftar Yuk",
                                          style: TextStyle(
                                            color: Colors.green[400],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Registerpage()));
                                        },
                                    )
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
                    margin: EdgeInsets.only(top:100,bottom: 10),
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
