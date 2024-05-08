import 'package:flutter/material.dart';
import 'package:messanger/Chats.dart';
import 'package:messanger/Community_tab.dart';
import 'package:messanger/Home_tab.dart';
import 'package:messanger/People.dart';
import 'package:messanger/Stories.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  
  List<String> page = [
    "HomeTab",
    "Communitytab",
  ];
  final screen = [Chats(), People(), Stories()];
  int index = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: SizedBox(
          height: 1000,
          width: 400,
          child: screen[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                currentIndex = (index);
              });
            },
            currentIndex: currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_outlined), label: "Chats"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_alt), label: "People"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.square_rounded), label: "Stories"),
            ]));
  }
}
