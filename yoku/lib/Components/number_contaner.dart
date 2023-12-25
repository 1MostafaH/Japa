import 'package:flutter/material.dart';
import 'package:yoku/Components/item_info.dart';
import 'package:yoku/models/item_model.dart';

class ContainerNumber extends StatelessWidget {
  const ContainerNumber({
    super.key,
    required this.color,
    required this.item,
    required this.leftcolor,
  });
  final Color color;
  final Color leftcolor;
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(35)),
        // color: color,
        alignment: Alignment.centerLeft,
        height: 100,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: leftcolor, borderRadius: BorderRadius.circular(35)),
              // color: leftcolor,
              child: Image.asset(item.image!),
            ),
            Expanded(
              child: ItemInfo(item: item),
            )
          ],
        ),
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(35)),
        height: 100,
        // color: color,
        child: Row(
          children: [
            Expanded(
              child: ItemInfo(item: item),
            ),
          ],
        ),
      ),
    );
  }
}
