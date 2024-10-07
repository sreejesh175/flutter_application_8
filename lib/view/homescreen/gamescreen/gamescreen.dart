import 'dart:math';

import 'package:flutter/material.dart';

class Gamescreen extends StatefulWidget {
  const Gamescreen({super.key});

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
  List dices = [
    "assets/d1.png",
    "assets/d2.png",
    "assets/d3.png",
    "assets/d5.png",
    "assets/d6.png"
  ];
  int? randomnumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: InkWell(
              onTap: () {
                randomnumber = Random().nextInt(5);
                print(randomnumber);
                setState(() {});
              },
              child: Image.asset(
                  height: 200,
                  width: 200,
                  randomnumber == null
                      ? "assets/button.png"
                      : dices[randomnumber!]),
            ),
          ),
        ],
      ),
    );
  }
}
