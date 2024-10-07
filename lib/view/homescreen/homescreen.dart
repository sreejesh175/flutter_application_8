import 'package:flutter/material.dart';
import 'package:flutter_application_8/view/homescreen/gamescreen/gamescreen.dart';

class Homescreen extends StatelessWidget {
  // List colors = [
  //   Colors.red,
  //   Colors.yellow,
  //   Colors.blue,
  //   Colors.green,
  //   Colors.pink
  // ];
  // List names = ["arun", "samuel", "richard", "smith", "john"];
  // List marks = ["500", "600", "1000", "800", "300"];
  final List money = ["1000", "3,548", "4,789", "2,000"];
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: CircleAvatar(
          child: Icon(Icons.search, size: 30, color: Colors.white),
          backgroundColor: Colors.grey,
          radius: 30,
        ),
        title: Text(
          "Finsights",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          Stack(
            children: [
              CircleAvatar(
                child: Icon(Icons.notifications_none_outlined,
                    size: 30, color: Colors.white),
                radius: 30,
                backgroundColor: Colors.grey,
              ),
              CircleAvatar(
                child: Text(
                  "4",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.orange,
                radius: 10,
              ),
            ],
          ),
          SizedBox(width: 20),
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/button.png"),
              ),
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.card_travel, size: 30, color: Colors.white),
                    Text(
                      "Aug 2023",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_drop_down, size: 20, color: Colors.white),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                ),
                height: 40,
                width: 200,
              ),
              SizedBox(width: 20),
              Container(
                child: Icon(Icons.music_note, size: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                ),
                height: 40,
                width: 70,
              ),
              SizedBox(width: 140),
              CircleAvatar(
                child: Icon(Icons.hub_rounded, size: 30, color: Colors.black),
                backgroundColor: Colors.white,
                radius: 25,
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Understand",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      "75% Complete",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) => Container(
                        child: Center(
                          child: Text(
                            money[index],
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red,
                        ),
                        height: 100,
                        width: 200,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Last 12 Week",
                  style: TextStyle(fontSize: 15),
                ),
                Divider(color: Colors.white, height: 20),
                Center(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Gamescreen(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          "Start Game",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    height: 100,
                    width: 300,
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey,
            ),
            height: 300,
            width: 450,
          ),
        ],
      ),
    );
  }
}
