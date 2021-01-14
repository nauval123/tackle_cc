import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tackle_cc/home_page.dart';
import 'package:tackle_cc/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
//halaman splasshcreen di awal
class SplashScreen extends StatefulWidget{
  @override
  _HalamanSplashScreen createState()=> _HalamanSplashScreen();
  
}

class _HalamanSplashScreen extends State<SplashScreen>{
bool slogin=false;
  @override
  void initState(){
    super.initState();
    autoLogIn();
    jalaninSplashScreen();
  }

void autoLogIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool statuslogin = prefs.getBool('statuslogin');

    if (slogin != null) {
      print(statuslogin);
      setState(() {
        slogin = statuslogin;
      });
      return;
    }
  }

//fungsi asyncr untuk memberikan waktu dellay sebelum diarahkan ke halam login
  jalaninSplashScreen() async{
    var duration = const Duration(seconds: 1);
    return Timer(duration, (){
      slogin == false ?
      Navigator.of(context).pushReplacement(
        MaterialPageRoute (builder: (_) {
          return Loginpage();
        }),
      ):Navigator.of(context).pushReplacement(
        MaterialPageRoute (builder: (_) {
          return HomePage();
        }),
      );
    });
  }

  
//tampilan ditampung di widget scaffold
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