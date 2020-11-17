import 'package:flutter/material.dart';
import 'package:tackle_cc/daftarMisi.dart';

import 'detail_mission.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int _selectedIndex = 0;
static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
static  List<Object> _widgetOptions = <Object>[
  //buat tampilan tiap halaman
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
   //listview untuk tampilan misi
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
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>detailmissionPage()));
          }, 
          icon: Icon(Icons.arrow_forward_ios_rounded,color: Colors.green,),
           label: Text('detail',style: TextStyle(color: Colors.green),),
      )
      ),      
    )
    );
  }
}


