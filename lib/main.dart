import 'package:flutter/material.dart';
import 'package:kualif_futter/models/globalVar.dart';
import 'package:kualif_futter/views/detailTab.dart';
import 'package:kualif_futter/views/list.dart';
import 'package:kualif_futter/views/login.dart';
import 'package:kualif_futter/views/home.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sparky Game Shop'),
          ),
          body: LoginPage(),
        ));
  }
}
