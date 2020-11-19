import 'package:flutter/material.dart';
import 'package:tackle_cc/daftarMisi.dart';

import 'component.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static  List<Object> _widgetOptions = <Object>[
  //list objek buat tampilan tiap halaman
   misiygSelesai(),
  kategoriMisi(),
  Text(
     'Profil dan tentang aplikasi',
     style: optionStyle,
  ),
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


class misiygSelesai extends StatefulWidget {
  @override
  _misiygSelesaiState createState() => _misiygSelesaiState();
}

class _misiygSelesaiState extends State<misiygSelesai> {
   //listview untuk tampilan misi dihalaman home
  List <String> misiSelesai =['Menggunakan Botol pribadi', 'Membuang sampah ditempatnya 3x', 'Menanam Pohon'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          centerTitle: true,
          title: Text('Misi Selesai'),
          leading: Container(),
        ),
        body:Column(
          children: <Widget>[
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child:Row(
            //     children: <Widget>[
            //        Container(
            //         height:50,
            //         child:Text('1'),
            //       ),
            //       Container(
            //         height:30,
            //         child:Text('1'),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              child:  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: <Widget>[
                    Container(
                      height:50,
                      width: 100,
                      margin: EdgeInsets.all(30),
                      child:Text('1'),
                    ),
                    Container(
                      height:50,
                      width: 100,
                      margin: EdgeInsets.only(left: 300),
                      child:Text('1'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              child: ListView.builder(
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
            ),
          ],
        )
      );
  }
}


