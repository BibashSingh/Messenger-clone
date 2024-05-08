import 'package:flutter/material.dart';

class Communitytab extends StatefulWidget {
  const Communitytab({super.key});

  @override
  State<Communitytab> createState() => _CommunitytabState();
}

class _CommunitytabState extends State<Communitytab> {
  List<String> bigca=[
    "img/avenger.jpg",
    "img/justic league.jpg",
    "img/the boys.jpg"];
     List<String> smallca=[
    "img/Ironmann.jpg",
    "img/superman.jpg",
    "img/butcher.jpg"];
  List<String> title=[
    "Avengers assemble",
    "Justic league",
    "The Boys"
  ];
  List<String> subtitle=[
    "Iron man : Avengers!.4:55 PM",
    "Superman sent a photo.3:25 AM",
    "Butcher:Oii!!!!.1:30 PM"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 600,
        // height: 600,
        
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
          return ListTile(
            leading:  Container(
              height: 100,
              // width: 100,
              child: Stack(
                        children: [
                          Container(
                            height: 50,
                          
                            child: CircleAvatar(
                              // backgroundImage: AssetImage("img/maho.jpg"),
                            backgroundImage: AssetImage(bigca[index]),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            
                              child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              
                            ),
                            child: CircleAvatar(
                            backgroundImage: AssetImage(smallca[index]),

                            
                            ),
                          )),
                        ],
                      ),
            ),
            title: Text(title[index],style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
            subtitle: Text(subtitle[index],style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
          );
        })),
      
    );
  }
}
