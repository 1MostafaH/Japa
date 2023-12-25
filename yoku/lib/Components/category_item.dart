import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  // Function()? onTap;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 75,
          // color: color,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(35)),
          child: Text(
            text!,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              // fontFamily: 'Pacifico',
            ),
          ),
        ),
      ),
    );
  }
}
