import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kualif_futter/models/globalVar.dart';

class reviewList extends StatelessWidget {
  var arr = [];
  reviewList(this.arr);

  Widget _build(var arr) {
    return Card(
      child: ListTile(
        title: Text('Sender : ' + Username),
        trailing: Text(arr),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: 
        arr.map<Widget>((e)=> _build(e)).toList()
    );
  }
}
