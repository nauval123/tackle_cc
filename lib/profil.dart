import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:tackle_cc/login_page.dart';
import 'package:tackle_cc/update_profil.dart';
import 'package:shared_preferences/shared_preferences.dart';


// halaman profil menggunakan statefullwidget
class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
   File _image;

  Future<Null> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('statuslogin', false);
  }


// fungsi untuk mengakses kamera dan menyimpannya
  _dariKamera() async {
  // ignore: deprecated_member_use
  File image = await ImagePicker.pickImage(
    source: ImageSource.camera, imageQuality: 50
  );

  setState(() {
    _image = image;
  });
}
// fungsi untuk mengakses galeri
_dariGaleri() async {
  // ignore: deprecated_member_use
  File image = await  ImagePicker.pickImage(
      source: ImageSource.gallery, imageQuality: 50
  );

  setState(() {
    _image = image;
  });
}
//fungsi untuk menampilkan pilihan pengambilan foto dari kamera / galeri
void _showPicker(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      _dariGaleri();
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    _dariKamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      }
    );
}
// tampilan profil dengan widget 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:Text('Profil'),
         backgroundColor: Colors.green[400],
         centerTitle: true,
         leading: RaisedButton( color: Colors.green[300],onPressed: () {logout();  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Loginpage())); },
         child:Icon(Icons.logout,color: Colors.red,)),
          ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/1.1,
              padding: EdgeInsets.only(top:10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.green[300],
                  Colors.green[500],
                ]), ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        _showPicker(context);
                      },
                      child: CircleAvatar(
                        radius: 55,
                        backgroundColor: Color(0xffFDCF09),
                        child: _image != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.file(
                                  _image,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.fitHeight,
                                ),
                              )
                            : Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(50)),
                                width: 100,
                                height: 100,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey[800],
                                ),
                              ),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                       Text(
                        'tes',
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
                        'tes',
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UbahprofilPage()));
                        },
                        child: Container(
                          child:Text('Ubah Profil',
                        style: TextStyle(color: Colors.white,fontSize: 20,letterSpacing: 2.0),),
                        )
                      )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


