import 'package:flutter/material.dart';

//tampilan tab misi di navbar
class kategoriMisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
       appBar: AppBar(
         title:Text('Daftar Misi'),
         backgroundColor: Colors.green[400],
         centerTitle: true,
         leading: Container(),
       ),
       body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                // gradient: 
              ),
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text('test1'),
              ),         
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text('test2'),
              ),         
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text('test3'),
              ),         
            ),

          ],
      )
    );
  }
}

class daftarMisi extends StatefulWidget {
  @override
  _daftarMisiState createState() => _daftarMisiState();
}

class _daftarMisiState extends State<daftarMisi> {
   
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
