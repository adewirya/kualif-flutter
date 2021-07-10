import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kualif_futter/models/globalVar.dart';
import 'package:kualif_futter/views/reviewList.dart';

class ListDetailPage extends StatefulWidget {
  String img;
  String name;
  int idx;

  ListDetailPage(this.img, this.name, this.idx);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListDetailState(img, name, idx);
  }
}

class ListDetailState extends State<ListDetailPage> {
  String img;
  String name;
  int idx;
  var cotx;
  ListDetailState(this.img, this.name, this.idx);

  var _ctrlReview = TextEditingController();
  var detailsList = [
    'Stranded on the shores of a mysterious island, you must learn to survive. Use your cunning to kill or tame the primeval creatures roaming the land, and encounter other players to survive, dominate... and escape!',
    'Conqueror’s Blade is an online tactical action game set in the Middle Ages. As a warlord, you’ll be commanding your medieval troops, while slaying enemies with deadly weapons in epic 15 VS 15 siege battles. In this vast continent, ally, conquer, and become the greatest ruler of the world.',
    'Counter-Strike: Global Offensive (CS: GO) expands upon the team-based action gameplay that it pioneered when it was launched 19 years ago. CS: GO features new maps, characters, weapons, and game modes, and delivers updated versions of the classic CS content (de_dust2, etc.).',
    'Deep Rock Galactic is a 1-4 player co-op FPS featuring badass space Dwarves, 100% destructible environments, procedurally-generated caves, and endless hordes of alien monsters.',
    'From legendary game creator Hideo Kojima comes an all-new, genre-defying experience. Sam Bridges must brave a world utterly transformed by the Death Stranding. Carrying the disconnected remnants of our future in his hands, he embarks on a journey to reconnect the shattered world one step at a time.'
  ];

  void _review() {
    String review = _ctrlReview.text;
    _ctrlReview.text = "";
    if (review.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Review Cannot be Emptied')),
      );
    }

    arr.add(review);
  }

  @override
  Widget build(BuildContext context) {
    cotx = context;
    return Column(
      children: [
        Image(image: AssetImage('assets/${img}')),
        Text(name,
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                decoration: TextDecoration.none)),
        Text(
          detailsList[idx],
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            decoration: TextDecoration.none,
          ),
        ),
        TextField(
          decoration: InputDecoration(hintText: 'Review'),
          controller: _ctrlReview,
        ),
        ElevatedButton(onPressed: _review, child: Text('Submit Review')),
      ],
    );
  }
}
