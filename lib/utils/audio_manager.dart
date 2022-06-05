import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioManager extends ChangeNotifier{
  AudioManager(){
    loadAssets();
}
  final player = AudioPlayer();
  double duration = 0.0;
  void play()async{
    await player.play();
    notifyListeners();
  }
  void pause()async{
    await player.pause();
    notifyListeners();
  }
  void seek(int duration)async{
    await player.seek(Duration(seconds: duration));
    notifyListeners();
  }
     void loadAssets()async{
        duration = (await player.setAsset('assets/some.mp3')) as double;
      }

}
