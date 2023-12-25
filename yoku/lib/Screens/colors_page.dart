import 'package:flutter/material.dart';
import 'package:yoku/Components/number_contaner.dart';
import 'package:yoku/models/item_model.dart';

// ignore: camel_case_types
class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  
  final List<ItemModel> color = const [
    ItemModel(
        sound: 'sounds/colors/kuro.wav',
        image: 'assets/images/colors/color_black.png',
        enname: 'Black',
        jpname: 'Kuro'),
    ItemModel(
        sound: 'sounds/colors/shiro.wav',
        image: 'assets/images/colors/color_white.png',
        enname: 'White',
        jpname: 'Shiro'),
    ItemModel(
        sound: 'sounds/colors/haiiro.wav',
        image: 'assets/images/colors/color_gray.png',
        enname: 'gray',
        jpname: 'Haiiro'),
    ItemModel(
        sound: 'sounds/colors/midori.wav',
        image: 'assets/images/colors/color_green.png',
        enname: 'green',
        jpname: 'Midori'),
    ItemModel(
        sound: 'sounds/colors/kiiro.wav',
        image: 'assets/images/colors/yellow.png',
        enname: 'yellow',
        jpname: 'Kiiro'),
    ItemModel(
        sound: 'sounds/colors/aka.wav',
        image: 'assets/images/colors/color_red.png',
        enname: 'red',
        jpname: 'Aka'),
    ItemModel(
        sound: 'sounds/colors/daidai.wav',
        image: 'assets/images/colors/orange.png',
        enname: 'Orange',
        jpname: 'Daidaiiro'),
    ItemModel(
        sound: 'sounds/colors/chairo.wav',
        image: 'assets/images/colors/color_brown.png',
        enname: 'brown',
        jpname: 'Chairo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 147, 199, 254),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 84, 173),
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: color.length,
          itemBuilder: (context, index) {
            return ContainerNumber(
                leftcolor: const Color.fromARGB(255, 61, 152, 249),
                color: const Color(0xff006de4),
                item: color[index]);
          }),
    );
  }
}
