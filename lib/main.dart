import 'package:flutter/material.dart';
import 'package:tackle_cc/splash_screen.dart';



void main()=>runApp(MyApp());

//root widget
//diarahkan pertama ke splash_screeen
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "tackel climate change",
     debugShowCheckedModeBanner: false,
     home: SplashScreen(),
   );
  }

} 
