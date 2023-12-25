import 'package:flutter/material.dart';
import 'package:yoku/Components/number_contaner.dart';
import 'package:yoku/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> number = const [
    ItemModel(
        sound: 'sounds/numbers/zero.wav',
        image: 'assets/images/numbers/zero.png',
        enname: 'zero',
        jpname: 'zero'),
    ItemModel(
        sound: 'sounds/numbers/ichi.wav',
        image: 'assets/images/numbers/number_one.png',
        enname: 'One',
        jpname: 'ichi'),
    ItemModel(
        sound: 'sounds/numbers/ni.wav',
        image: 'assets/images/numbers/number_two.png',
        enname: 'Two',
        jpname: 'ni'),
    ItemModel(
        sound: 'sounds/numbers/san.wav',
        image: 'assets/images/numbers/number_three.png',
        enname: 'Three',
        jpname: 'san'),
    ItemModel(
        sound: 'sounds/numbers/yon.wav',
        image: 'assets/images/numbers/number_four.png',
        enname: 'Four',
        jpname: 'yon '),
    ItemModel(
        sound: 'sounds/numbers/go.wav',
        image: 'assets/images/numbers/number_five.png',
        enname: 'five',
        jpname: 'go '),
    ItemModel(
        sound: 'sounds/numbers/roku.wav',
        image: 'assets/images/numbers/number_six.png',
        enname: 'Six',
        jpname: 'roku '),
    ItemModel(
        sound: 'sounds/numbers/shichi.wav',
        image: 'assets/images/numbers/number_seven.png',
        enname: 'Seven',
        jpname: 'Shichi'),
    ItemModel(
        sound: 'sounds/numbers/hachi.wav',
        image: 'assets/images/numbers/number_eight.png',
        enname: 'Eight',
        jpname: 'hachi '),
    ItemModel(
        sound: 'sounds/numbers/kyuu.wav',
        image: 'assets/images/numbers/number_nine.png',
        enname: 'Nine',
        jpname: 'kyuu '),
    ItemModel(
        sound: 'sounds/numbers/juu.wav',
        image: 'assets/images/numbers/number_ten.png',
        enname: 'Ten',
        jpname: 'juu '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 246, 242),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 122, 117),
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return ContainerNumber(
                leftcolor: const Color.fromARGB(255, 72, 202, 195),
                color: const Color.fromARGB(255, 19, 122, 117),
                item: number[index]);
          }),
    );
  }
}

//* used itembuilder 
// List<Widget> getnumber(List<Number> number) {
//   List<Widget> itemlist = [];
//   for (int i = 0; i < number.length; i++) {
//     itemlist.add(containernumber(number: number[i]));
//   }
//   return itemlist;
// }
