import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tackle_cc/login_page.dart';

class splash_Screen extends StatefulWidget{
  @override
  _HalamanSplashScreen createState()=> _HalamanSplashScreen();
  
}

class _HalamanSplashScreen extends State<splash_Screen>{

  @override
  void initState(){
    super.initState();
    jalaninSplashScreen();
  }

  jalaninSplashScreen() async{
    var duration = const Duration(seconds: 3);
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
     backgroundColor: Colors.white,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         
         children: <Widget>[
           Image.asset("images/iconApps.png",height: 150,width: 400,),
           Text("Tackle Climate Change",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.green[400], 
              ),
            )
         ],
       ),
     ),
   );
  }

}