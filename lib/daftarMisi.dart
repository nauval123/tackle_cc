import 'package:flutter/material.dart';


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


class DaftarMisi extends StatefulWidget {
  @override
  _DaftarMisiState createState() => _DaftarMisiState();
}

class _DaftarMisiState extends State<DaftarMisi> {

   
  List <String> misiSelesai =['Menggunakan Botol pribadi', 'Membuang sampah ditempatnya 3x', 'Menanam Pohon'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('Misi Selesai'),
          leading: FlatButton(onPressed: null,child: Icon(Icons.logout,color:Colors.red,)) ,
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: misiSelesai.length,
          itemBuilder: (context, i) {
            return Column(
              children: <Widget>[
              Container(
                margin: EdgeInsets.all(8.0),
                child: Center(
                  child: cardDetail(misiSelesai[i])
                ),
            ),
              ],
            ); 
          },
        ),
      );
  }

  Widget cardDetail(title){
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
          onPressed: (null), 
          icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,),
           label: Text('detail',style: TextStyle(color: Colors.green),),
      )
      ),      
    )
    );
  }
}
