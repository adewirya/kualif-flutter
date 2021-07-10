import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kualif_futter/models/location.dart';
import 'package:kualif_futter/views/detailTab.dart';

import 'listdetail.dart';

class ListPages extends StatelessWidget {
  var ctx;
  var _data = [
    Location('ark.png', 'Ark Survival Evolved', 0),
    Location('conqueror-blade.png', 'Conquerors Blade', 1),
    Location('csgo.png', 'Counter Strike Global Offensive', 2),
    Location('drg.png', 'Deep Rock Galactic', 3),
    Location('ds.png', 'Death Stranding', 4)
  ];

  void _onPressed(Location l) {
    Navigator.push(ctx, MaterialPageRoute(builder: (builder) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sparky Game Shop'),
          ),
          body: TabPage(l.img, l.name, l.idx),
        ),
      );
    }));
  }

  Widget _buildWidget(Location l) {
    return Card(
      child: ListTile(
        leading: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 80,
            minWidth: 80,
            maxHeight: 100,
            maxWidth: 100,
          ),
          child: Image.asset(
            'assets/${l.img}',
            fit: BoxFit.cover,
          ),
        ),
        title: Text(l.name),
        trailing: ElevatedButton(
          child: Text('Details'),
          onPressed: () => _onPressed(l),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.lightGreen)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ctx = context;
    return ListView(
        children: _data.map<Widget>((e) => _buildWidget(e)).toList());
  }
}
