import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';




class TuneModel
{
  final player = AudioPlayer();
  Color color;
  String songText;
  String songSource;
  TuneModel({required this.songText,required this.color,required this.songSource});


  void playSound()
  {

    player.play(UrlSource('${songSource}'));

  }
  void stopSound()
  {
    player.stop();

  }



}