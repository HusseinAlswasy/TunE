import 'package:flutter/material.dart';
import 'package:navi/model/model.dart';
import 'package:navi/widget/tune_item.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});

  final List<TuneModel> tuneColor = [
    TuneModel(text: 'A', color: Colors.black, sound: 'note1.wav'),
    TuneModel(text: 'B', color: Colors.orange, sound: 'note2.wav'),
    TuneModel(text: 'C', color: Colors.red, sound: 'note3.wav'),
    TuneModel(text: 'D', color: Colors.deepPurple, sound: 'note4.wav'),
    TuneModel(text: 'E', color: Colors.blue, sound: 'note5.wav'),
    TuneModel(text: 'F', color: Colors.yellow, sound: 'note6.wav'),
    TuneModel(text: 'G', color: Colors.teal, sound: 'note7.wav'),
    TuneModel(text: 'All Letters', color: Colors.pink, sound: 'La.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "ABC",
          style: TextStyle(
            color: Colors.white,
          ),
        )),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: tuneColor.map((e) => TuneItem(tune: e)).toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItem() {
  //   List<TuneItem> items = [];

  //   for (var color in tuneColor) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
