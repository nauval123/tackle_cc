import 'package:flutter/material.dart';
import 'package:tackle_cc/daftarMisi.dart';
import 'package:tackle_cc/profil.dart';

import 'component.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;
// static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static  List<Object> _widgetOptions = <Object>[
  //list objek buat tampilan tiap halaman
   MisiygSelesai(),
  KategoriMisi(),
  ProfilPage(),
];

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      //memanggil dari list object kelas di atas untuk tampilan tiap halaman
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          title: Text("Home") ,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.whatshot_outlined),
          title: Text('Misi'),
        ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text("Tentang")
          ),
        ],
        unselectedItemColor: Colors.black54,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[400],
        onTap: _onItemTapped,
      ),
    );
  }
}


class MisiygSelesai extends StatefulWidget {
  @override
  _MisiygSelesaiState createState() => _MisiygSelesaiState();
}

class _MisiygSelesaiState extends State<MisiygSelesai> {
   //listview untuk tampilan misi dihalaman home
  List <String> misiSelesai =['Menggunakan Botol pribadi', 'Membuang sampah ditempatnya 3x', 'Menanam Pohon'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Column(
          children: <Widget>[

            Container(
              height: MediaQuery.of(context).size.height/3,
              padding: EdgeInsets.only(top:50),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.green[300],
                  Colors.green[500],
                ]), ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                   Text(
                        'Halo X ',
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
                        'Lawan Perubahan Iklim!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        ),
                        Container(
                          height: 30,
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.green[500],
                        ),
                        child:Column(
                          children: <Widget> [
                             Text(
                        'Misi Selesai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/6,
                        ),
                     Text('100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      )
                          ]
                        )
                      ),
                      Container(
                         padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.green[600],
                        ),
                        child:Column(
                          children: <Widget> [
                             Text(
                        'Tersisa',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width/6,
                        ),
                      Text('100',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      )
                          ]
                        )
                      )
                    ],
                  ),
                  Container(
                    height: 10,
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.575,
              child: ListView.builder(
                padding: EdgeInsets.all(20.0),
                itemCount: misiSelesai.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(8.0),
                        child: Center(
                          child: CardDetail(misiSelesai[i])
                        ),
                      ),
                    ],
                  ); 
                },
              ),
            ),
          ],
        )
      );
  }
}


