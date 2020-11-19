import 'package:flutter/material.dart';
import 'package:tackle_cc/detail_mission.dart';
import 'package:tackle_cc/home_page.dart';
//formlogin 
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
            margin: EdgeInsets.only(top: 150,bottom: 40, left: 60,right:60) ,
            child: Text('Tackle Climate Change',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),),
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
          )
        ],
      ),
    );
  }
}

//komponen cardDetail
class cardDetail extends StatelessWidget {
  String title;

  cardDetail(String input){
    this.title= input;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
    margin: EdgeInsets.all(5),
    elevation: 5,
    child: ListTile(
      leading: Icon(Icons.accessibility_new_rounded,color: Colors.green,),
      title: Text(
        title,
        style: TextStyle(fontSize: 12,
        fontWeight: FontWeight.bold),
      ),
      subtitle: Text('easy'),
      trailing: Container(
        child: FlatButton.icon( 
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context) =>detailmissionPage()));
          }, 
          icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,),
           label: Text('detail',style: TextStyle(color: Colors.green),),
      )
      ),      
    )
    );
  }
}

