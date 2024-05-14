import 'package:flutter/material.dart';
class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
    List<String> Speople = [
    "img/Ironman.jpg",
    "img/Spiderman.jpg",
    "img/Vision.jpg",
    "img/Thor.jpg",
    "img/Hulk.jpg",
    "img/Doctor Strange.jpg",
    "img/Deadpool.jpg",
    "img/Captian Marvel.jpg",
    "img/Black Widow.jpg",
    "img/Black panther.webp",
  ];
   List<String> Snames = [
    "Ironman",
    "Spiderman",
    "Vision",
    "Thor",
    "Hulk",
    "Doctor Strange",
    "Deadpool",
    "Captian Marvel",
    "Black Widow",
    "Black panther",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 231, 227, 227),
          title: Text(
            "Stories",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          ),
         
        ),drawer: Drawer(
        child: ListView(
          children: [
            Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("img/maho.jpg"),
                ),
                const Spacer(),
                const Text("Bibash Singh Thakuri"),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings, color: Colors.black),
                )
              ],
            ),
                          ),
                        ),
            const ListTile(
              title: Text("Chats"),
              leading: Icon(Icons.chat_bubble),
            ),
            const ListTile(
              title: Text("Marketplace"),
              leading: Icon(Icons.home_outlined),
            ),
            const ListTile(
              title: Text("Message requests"),
              leading: Icon(Icons.message_sharp),
            ),
            const ListTile(
              title: Text("Archive"),
              leading: Icon(Icons.archive),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
        body:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing:12 ,
                mainAxisSpacing: 12,
                mainAxisExtent: 300,
                childAspectRatio:4.0,
                crossAxisCount: 2),
              itemCount: 10,
               itemBuilder: ((context, index) {
                return Container(
                  height: 400,
                  padding: EdgeInsets.all(17),
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.amber,//
                    image: DecorationImage(image: AssetImage(Speople[index]),fit: BoxFit.cover)
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                    top: 5,
                    left: 5,
                    child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: CircleAvatar(backgroundImage: AssetImage(Speople[index]),
                      
                      ),
                    ),

                  )),
                  Positioned(
                    bottom: 2,
                    left: 2,
                    child: Text(Snames[index],style: TextStyle(color: Colors.white,fontSize: 16),))
                    ],
                  ),
                );
              })),
          
        )
        );
        
  }
}