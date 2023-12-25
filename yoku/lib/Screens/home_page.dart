import 'package:flutter/material.dart';
import 'package:yoku/Components/category_item.dart';
import 'package:yoku/Screens/colors_page.dart';
import 'package:yoku/Screens/family_member.dart';
import 'package:yoku/Screens/number_page.dart';
import 'package:yoku/Screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(192, 7, 46, 51),
      appBar: AppBar(
        title: const Text(
          '日本語 言語 ', //?
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 41, 47),
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch, replase with double.infinity
        children: [
          Category(
            text: 'Numbers',
            color: const Color.fromARGB(255, 19, 122, 117),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
          ),
          Category(
            text: 'Falimy members',
            color: const Color.fromARGB(255, 15, 156, 95),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const familyMembers();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0xff006de4),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            text: 'phrases',
            color: const Color.fromARGB(255, 7, 100, 137),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
          ),
          const Divider(
            color: Color.fromARGB(255, 101, 106, 133),
            thickness: 1,
            indent: 50,
            endIndent: 50,
            height: 20,
          ),
          const Expanded(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xff072e33),
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage(
                    'assets/images/_fed7b682-8b7f-40b4-855c-bb9de537f967.jpeg'),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Discover Japan effortlessly with our app Learn numbers, colors, family members, and essential phrases in just a few taps. Master the basics of Japanese language and culture in a fun and interactive way.',
                style: TextStyle(
                  fontSize: 17,
                  color: Color.fromARGB(255, 253, 253, 253),
                ),
              ),
            ),
          ),
          const Divider(
            color: Color.fromARGB(255, 101, 106, 133),
            thickness: 1,
            indent: 50,
            endIndent: 50,
            height: 20,
          ),
        ],
      ),
    );
  }
}
