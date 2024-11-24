import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color color;
  final String sound;
  final String text;

  TuneModel({required this.color, required this.sound, required this.text});

  void PlaySound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
