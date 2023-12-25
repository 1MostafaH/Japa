import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String? image;
  final String jpname;
  final String enname;
  final String sound;
  const ItemModel(
      {required this.sound,
      this.image,
      required this.enname,
      required this.jpname});
  playSound() {
    final play = AudioPlayer();
    play.play(AssetSource(sound));
  }
}
