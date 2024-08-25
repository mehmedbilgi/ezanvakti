import 'package:ezan_vakti/Sayfalar/ana_sayfa.dart';
import 'package:ezan_vakti/Sayfalar/ayarlar.dart';
import 'package:ezan_vakti/Sayfalar/hadisler.dart';
import 'package:ezan_vakti/Sayfalar/k%C4%B1ble.dart';
import 'package:ezan_vakti/Sayfalar/kuran.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
 List<Widget> tumSayfalar = [];
 

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Anasayfa anasayfa=new Anasayfa();
    Hadisler hadis=new Hadisler();
    Kible kible=new Kible();
    Meal meal=new Meal();
    Ayarlar ayarlar=new Ayarlar();


    tumSayfalar = [
    anasayfa,kible,meal,hadis,ayarlar
 
  ];
  }
    

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Viranşehir', style: TextStyle(fontSize: 16)),
            Text(
              'AKŞAM',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Icon(Icons.location_searching_sharp),
          Padding(
            padding: const EdgeInsets.all(10),
          ),
        ],
      ),
        body: tumSayfalar[_selectedIndex],
        bottomNavigationBar: botom_navigasyon(),
      ),
    );
  }

  BottomNavigationBar botom_navigasyon() {
    return BottomNavigationBar(
      
        fixedColor: Colors.white,
        backgroundColor: Colors.blue,
        
        
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          
          BottomNavigationBarItem( 
           
            icon: 
            Icon(Icons.home),
            
            label: 'Ana Sayfa',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Kıble',
          ),
             BottomNavigationBarItem(
            icon: Icon(Icons.book_online),
            label: 'Kuranı Meali',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'hadisler',
          ),
       
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        
        type: BottomNavigationBarType.fixed,
      );
  }
}