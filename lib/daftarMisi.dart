import 'package:flutter/material.dart';
import 'package:tackle_cc/listMisi.dart';

//tampilan tab misi di navbar
class KategoriMisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       appBar: AppBar(
         title:Text('Daftar Misi'),
         backgroundColor: Colors.green[400],
         centerTitle: true,
         leading: Container(),
       ),
       body:ListView(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[200],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage('images/easy.jpg') 
                ),
              ),
              margin: EdgeInsets.all(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                   onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ListmisiPage(tingkat:"easy")));
                    },
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                      ),
                      Text(
                        'mudah',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'deskripsi',
                         style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[200],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage('images/medium.jpg') 
                ),
              ),
              margin: EdgeInsets.all(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                   onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ListmisiPage(tingkat:"medium")));
                    },
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                      ),
                      Text(
                        'Sedang',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'deskripsi',
                         style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green[200],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: AssetImage('images/hard.jpg') 
                ),
              ),
              margin: EdgeInsets.all(10),
                child: InkWell(
                  borderRadius: BorderRadius.circular(10),
                   onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ListmisiPage(tingkat: "Hard",)));
                    },
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 100,
                      ),
                      Text(
                        'Sulit',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'deskripsi',
                         style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
      )
    );
  }
}