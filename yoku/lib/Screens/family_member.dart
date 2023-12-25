import 'package:flutter/material.dart';
import 'package:yoku/Components/number_contaner.dart';
import 'package:yoku/models/item_model.dart';

// ignore: camel_case_types
class familyMembers extends StatelessWidget {
  const familyMembers({super.key});
  final List<ItemModel> members = const [
    ItemModel(
        sound: 'sounds/family_members/chichi.wav',
        image: 'assets/images/family_members/family_father.png',
        enname: 'father',
        jpname: 'chichi'),
    ItemModel(
        sound: 'sounds/family_members/haha.wav',
        image: 'assets/images/family_members/family_mother.png',
        enname: 'mother',
        jpname: 'haha'),
    ItemModel(
        sound: 'sounds/family_members/musume.wav',
        image: 'assets/images/family_members/family_son.png',
        enname: 'son',
        jpname: 'musume'),
    ItemModel(
        sound: 'sounds/family_members/musuko.wav',
        image: 'assets/images/family_members/family_daughter.png',
        enname: 'daughter',
        jpname: 'musuko'),
    ItemModel(
        sound: 'sounds/family_members/ani.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        enname: 'older brother',
        jpname: 'ani'),
    ItemModel(
        sound: 'sounds/family_members/ane.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        enname: 'older sister',
        jpname: 'ane'),
    ItemModel(
        sound: 'sounds/family_members/otooto.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        enname: 'younger brother',
        jpname: 'otouto'),
    ItemModel(
        sound: 'sounds/family_members/imooto.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        enname: 'younger sister',
        jpname: 'imouto'),
    ItemModel(
        sound: 'sounds/family_members/sofu.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        enname: 'grandfather',
        jpname: 'sofu'),
    ItemModel(
        sound: 'sounds/family_members/sobo.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        enname: 'grandmother',
        jpname: 'sobo'),
    ItemModel(
        sound: 'sounds/family_members/oji.wav',
        image: 'assets/images/family_members/family_father.png',
        enname: 'uncle',
        jpname: 'oji'),
    ItemModel(
        sound: 'sounds/family_members/oba.wav',
        image: 'assets/images/family_members/family_mother.png',
        enname: 'aunt',
        jpname: 'oba'),
    ItemModel(
        sound: 'sounds/family_members/otto.wav',
        image: 'assets/images/family_members/family_father.png',
        enname: 'husband',
        jpname: 'otto'),
    ItemModel(
        sound: 'sounds/family_members/tsuma.wav',
        image: 'assets/images/family_members/family_mother.png',
        enname: 'wife',
        jpname: 'tsuma'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 129, 222, 182),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 133, 75),
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return ContainerNumber(
                leftcolor: const Color.fromARGB(255, 79, 182, 137),
                color: const Color.fromARGB(255, 15, 156, 95),
                item: members[index]);
          }),
    );
  }
}
