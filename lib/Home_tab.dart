import 'package:flutter/material.dart';

class Hometab extends StatefulWidget {
  const Hometab({super.key});

  @override
  State<Hometab> createState() => _HometabState();
}

class _HometabState extends State<Hometab> {
  List<String> profile = [
 
    "img/Black panther.webp",
    "img/Black Widow.jpg",
    "img/Captian Marvel.jpg",
    "img/Deadpool.jpg",
    "img/Doctor Strange.jpg",
    "img/Hulk.jpg",
    "img/Thor.jpg",
    "img/Vision.jpg",
    "img/Spiderman.jpg",
    "img/Ironman.jpg",



  ];
  List<String> pname = [
 
        "Black panther",
    "Black Widow",
    "Captian Marvel",
    "Deadpool",
    "Doctor Strange",
    "Hulk",
    "Thor",
    "Vision",
    "Spiderman",
    "Ironman",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(profile[index]),
                  ),
                  title: Text(pname[index]),
                  subtitle: Text(
                    "You sent an attachment.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  trailing: Icon(Icons.check_circle),
                );
              })),
    );
  }
}
