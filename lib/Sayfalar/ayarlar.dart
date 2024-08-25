import 'package:flutter/material.dart';

class Ayarlar extends StatelessWidget{

  Widget build(BuildContext context){
    return   Scaffold(
      
      appBar: null,
    
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.location_on, color: Colors.teal),
            title: Text('Şehri Değiştir'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Şehri değiştir işlemi
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.sync, color: Colors.teal),
            title: Text('Vakitleri Güncelle'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Vakitleri güncelle işlemi
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.build, color: Colors.teal),
            title: Text('Hesaplama Yöntemi'),
            subtitle: Text('Diyanet Takvimi'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Hesaplama yöntemi işlemi
            },
          ),
        ],
      ),
    );
  }
  }
