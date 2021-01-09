import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:tackle_cc/update_profil.dart';


// halaman profil menggunakan statefullwidget
class ProfilPage extends StatefulWidget {
  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
   File _image;
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
//fungsi untuk menampilkan pilihan pengambilan foto
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
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => UbahprofilPage()));
                        },
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


