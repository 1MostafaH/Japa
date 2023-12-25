import 'package:flutter/material.dart';
import 'package:yoku/Components/number_contaner.dart';
import 'package:yoku/models/item_model.dart';

// ignore: camel_case_types
class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
      sound: 'sounds/phrases/hai.mp3',
      enname: 'Yes',
      jpname: 'Hai',
    ),
    ItemModel(
      sound: 'sounds/phrases/iie.mp3',
      enname: 'No',
      jpname: 'Iie',
    ),
    ItemModel(
      sound: 'sounds/phrases/sumimasen.mp3',
      enname: 'Excues me',
      jpname: 'Sumimasen',
    ),
    ItemModel(
      sound: 'sounds/phrases/doumo.mp3',
      enname: 'Thanks',
      jpname: 'Doumo',
    ),
    ItemModel(
      sound: 'sounds/phrases/arigatou.mp3',
      enname: 'Thank you',
      jpname: 'Arigatou gozaimasu',
    ),
    ItemModel(
      sound: 'sounds/phrases/douitashi.mp3',
      enname: 'You are welcome',
      jpname: 'Dou itashimashite',
    ),
    ItemModel(
      sound: 'sounds/phrases/nihongohanashi.mp3',
      enname: 'Do you speak Japanese',
      jpname: 'Nihongo o hanashimasu ka',
    ),
    ItemModel(
      sound: 'sounds/phrases/haisukoshi.mp3',
      enname: 'Yes, little',
      jpname: 'Hai, sukoshi',
    ),
    ItemModel(
      sound: 'sounds/phrases/wakarimasen.mp3',
      enname: 'Do you understand?',
      jpname: 'Wakarimasen',
    ),
    ItemModel(
      sound: 'sounds/phrases/shirimasen.mp3',
      enname: 'I don\'t know',
      jpname: 'Shirimasen',
    ),
    ItemModel(
      sound: 'sounds/phrases/nihongodenanto.mp3',
      enname: 'How do you say it in Japanese?',
      jpname: 'Nihongo de nan to iimasu ka',
    ),
    ItemModel(
      sound: 'sounds/phrases/douiuimi.mp3',
      enname: 'What does it mean?',
      jpname: 'Dou iu imi desu ka',
    ),
    ItemModel(
        sound: 'sounds/phrases/korenan.mp3',
        enname: 'What is it?',
        jpname: 'Kore wa nan desu ka'),
    ItemModel(
        sound: 'sounds/phrases/yukkuri.mp3',
        enname: 'Please speak slowly',
        jpname: 'Yukkuri hanashite kudasai'),
    ItemModel(
        sound: 'sounds/phrases/mouichido.mp3',
        enname: 'Please say it again',
        jpname: 'Mou ichido itte kudasai'),
    ItemModel(
        sound: 'sounds/phrases/iiekekkou.mp3',
        enname: 'No, thanks',
        jpname: 'Iie, kekkou desu'),
    ItemModel(
        sound: 'sounds/phrases/daijoubu.mp3',
        enname: 'It is all right',
        jpname: 'Daijoubu desu'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 166, 203),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 100, 137),
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
                // leftcolor: const Color.fromARGB(255, 119, 175, 79),
                color: const Color.fromARGB(255, 7, 100, 137),
                item: phrases[index]);
          }),
    );
  }
}
