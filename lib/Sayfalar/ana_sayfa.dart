import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget{
  
  final List<Map<String, String>> prayerTimes = [
    {'name': 'Sabah', 'time': '03:10', 'icon': 'volume_up'},
    {'name': 'Güneş', 'time': '04:54', 'icon': 'volume_up'},
    {'name': 'Öğlen', 'time': '12:25', 'icon': 'volume_up'},
    {'name': 'İkindi', 'time': '16:16', 'icon': 'volume_up'},
    {'name': 'Akşam', 'time': '19:44', 'icon': 'volume_up'},
    {'name': 'Yatsı', 'time': '21:22', 'icon': 'volume_up'},
 
  ];

  Widget build(BuildContext context){

    return MaterialApp( 
      debugShowCheckedModeBanner:false ,
  
      home: Scaffold(
        backgroundColor: Colors.blue,
       
        body: Center(
        
        child: Column(
           
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              
           
            SizedBox(height: 10),
            Text(
              'Sonraki Vakit İmsak',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 0),
            Text(
              '03:09',
              style: TextStyle(
                color: Colors.black,
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 0),
            Text(
              '03:37:12',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: [
                  Text(
                    '06 Haziran 2024 / ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '29 Zilkade 1445',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              
            ),
             SizedBox(height: 5),
             Padding(padding:EdgeInsets.all(0)),
             
            Expanded( 
              child: ListView.builder(
                
                itemCount: prayerTimes.length,
                itemBuilder: (context, index) {
                  final item = prayerTimes[index];
                  return ListTile(
                    
                    contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
                    leading: Text(
                      
                      item['name']!,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: item['name'] == 'İkindi' || item['name'] == 'Akşam' ? FontWeight.bold : FontWeight.normal,
                        color: item['name'] == 'Akşam' ? Colors.blue : Colors.black,
                      ),
                    ),
                    title: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        item['time']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: item['name'] == 'İkindi' || item['name'] == 'Akşam' ? FontWeight.bold : FontWeight.normal,
                          color: item['name'] == 'Akşam' ? Colors.blue : Colors.black,
                        ),
                      ),
                    ),
                    trailing: Icon(
                      item['icon'] == 'volume_up' ? Icons.volume_up : Icons.volume_off,
                      color: item['icon'] == 'volume_up' ? Colors.black : Colors.grey,
                    ),
                    tileColor:
                    item['name'] == 'Sabah'
                        ? Colors.grey.shade300:
                        item['name'] == 'Güneş'
                        ? Colors.grey.shade300:
                    item['name'] == 'Öğlen'
                        ? Colors.grey.shade300:
                          item['name'] == 'İkindi'
                        ? Colors.grey.shade300:item['name'] == 'Yatsı'
                        ? Colors.grey.shade300:
                        

                         item['name'] == 'Akşam'
                            ? Colors.teal.shade50
                            : Colors.transparent,
                    shape: item['name'] == 'Akşam'
                    
                        ? RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          )
                        : null,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ),
          
        );
      
    
    
  }
}

