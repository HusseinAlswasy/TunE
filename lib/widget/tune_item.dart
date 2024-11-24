import 'package:flutter/material.dart';
import 'package:navi/model/model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});

  @override
  final TuneModel tune;
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.PlaySound();
        },
        child: Container(
          color: tune.color,
          width: double.infinity,
          child: Center(
            child: Text(
              tune.text,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
