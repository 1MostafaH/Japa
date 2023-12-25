import 'package:flutter/material.dart';
import 'package:yoku/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jpname,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Divider(
                color: Color.fromARGB(255, 255, 255, 255),
                thickness: 3,
                // indent: 20,
                endIndent: 5,
                height: 5,
              ),
              Text(
                item.enname,
                style: const TextStyle(
                    fontSize: 19,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 30,
        ),
        IconButton(
          splashColor: Colors.red,
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 40,
            // shadows: [
            //   Shadow(color: Colors.white, blurRadius: 10, offset: Offset.zero)
            // ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
