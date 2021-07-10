import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kualif_futter/views/listdetail.dart';

import 'list.dart';
import 'login.dart';

class navBar extends StatelessWidget {
  var cotx;
  String username;
  navBar(this.username);

  void toItemList() {
    Navigator.push(cotx, MaterialPageRoute(builder: (builder) {
      return MaterialApp(
        home: 
          Scaffold(
            appBar: AppBar(
              title: Text('Sparky Game Shop'),
            ),
            body: ListPages(),
          )
      );
    }));
  }

  void logout() {
    Navigator.push(cotx, MaterialPageRoute(builder: (builder) {
      return MaterialApp(
        theme: ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sparky Game Shop'),
          ),
          body: LoginPage(),
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    cotx = context;
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Center(
              child: Text('Hello ' + username),
            ),
          ),
          ListTile(
            title: TextButton(
              child: Text('Items List'),
              onPressed: toItemList,
            ),
          ),
          ListTile(
              title: TextButton(
            child: Text('Logout'),
            onPressed: logout,
          )),
        ],
      ),
    );
  }
}
