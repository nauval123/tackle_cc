import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tackle_cc/login_page.dart';

class Splash_screen extends StatefulWidget{
  @override
  _HalamanSplashScreen createState()=> _HalamanSplashScreen();
  
}

class _HalamanSplashScreen extends State<Splash_screen>{

  @override
  void initState(){
    super.initState();
    jalaninSplashScreen();
  }

  jalaninSplashScreen() async{
    var duration = const Duration(seconds: 10);
    return Timer(duration, (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute (builder: (_) {
          return Loginpage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.greenAccent[700],
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         
         children: <Widget>[
           Image.asset("images/logo2.png",height: 250,width: 500,),
           Text("Tackle Climate Change",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white, 
              ),
            )
         ],
       ),
     ),
   );
  }

}