import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: MediaQuery.of(context).orientation == Orientation.landscape
    ? SingleChildScrollView(child: ContentArea()):ContentArea(),
  );
 } 
}

class ContentArea extends StatelessWidget{

  const ContentArea({
    Key key,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormLogin(),
        Flexible(
          flex: 1, 
          child: Container(
            margin: const EdgeInsets.all(30),
            
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      padding: const EdgeInsets.all(0.0),
                      child: Ink(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF13E3D2),
                              Color(0xFF5D74E2)
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80.0),
                          ),
                        ),
                        child: Container(
                          constraints: const BoxConstraints(
                            minWidth: 150.0,
                            minHeight: 36.0,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(
                        borderRadius:BorderRadius.circular(80),
                      ),
                      padding: const EdgeInsets.all(0),
                      child: 
                      Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                             colors: <Color>[
                              Color(0xFF13E3D2),
                              Color(0xFF5D74E2)
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
                  ],
                ),
              ],
            ),
          ),
        )

      ],
    );
  }

}



class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                image: AssetImage('images/bg1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3.6,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                margin: const EdgeInsets.all(20.0),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Yuk Login dulu",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.email,
                            color: Colors.blue[200],
                          ),
                          labelText: "Email: ", 
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.security,
                            color: Colors.blue[200],
                          ),
                          labelText: "Password: ",
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, bottom: 5, right: 15.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.blue[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}