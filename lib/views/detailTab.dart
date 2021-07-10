import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kualif_futter/models/globalVar.dart';
import 'package:kualif_futter/views/listdetail.dart';
import 'package:kualif_futter/views/reviewList.dart';

class TabPage extends StatelessWidget {
  String img, name;
  int idx;
  TabPage(this.img, this.name, this.idx);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Text('Detail'),
              Text('Review'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListDetailPage(img, name, idx),
            reviewList(arr),
          ],
        ),
      ),
    );
  }
}
