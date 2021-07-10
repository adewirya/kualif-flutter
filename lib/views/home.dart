import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kualif_futter/models/globalVar.dart';
import 'package:kualif_futter/views/list.dart';
import 'package:kualif_futter/views/login.dart';
import 'package:kualif_futter/views/nav.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homePageState();
  }
}

class homePageState extends State<homePage> {
  var imageLinkList = [
    'assets/ark.png',
    'assets/conqueror-blade.png',
    'assets/csgo.png',
    'assets/drg.png',
    'assets/ds.png'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return ['Toggle Theme'].map((e) {
              return PopupMenuItem(
                  child: TextButton(
                child: Text('Toggle Theme'),
                onPressed: () {
                  setState(() {
                    darkTheme = !darkTheme;
                  });
                },
              ));
            }).toList();
          })
        ],
      ),
      drawer: navBar(Username),
      body: 
        Column(children: [
                CarouselSlider(
              items: [
                Image(
                  image: AssetImage(imageLinkList[0]),
                ),
                Image(
                  image: AssetImage(imageLinkList[1]),
                ),
                Image(
                  image: AssetImage(imageLinkList[2]),
                ),
                Image(
                  image: AssetImage(imageLinkList[3]),
                ),
                Image(image: AssetImage(imageLinkList[4]))
              ],
              options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3)),
            ),
            Image(image: AssetImage('assets/logo.png')),
            Text('About Us', 
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey,
                  decoration: TextDecoration.none
                )
            ),
            Center(
              child: 
                Container(
                  padding: EdgeInsets.all(10),
                  child: 
                    Text(
                      'Sparky Game Shop is the ultimate destination for playing, discussing, and creating games with thousands of live community, here we strive our best in becoming the best gaming platform',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        decoration: TextDecoration.none,  
                      ),
                      textAlign: TextAlign.justify,
                    ),
                )
            ),
        ],
      )
        
    );
  }
}
