import 'package:flutter/material.dart';
import 'package:messanger/Community_tab.dart';
import 'package:messanger/Home_tab.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  List<String> photos = [
 
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
  List<String> names = [
 
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
  List<String> page = [
    "HomeTab",
    "Communitytab",
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 227, 227),
        title: Text(
          "Chats",
          style: TextStyle(
              fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            backgroundColor: Colors.grey[300],
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: Padding(
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
            )),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text("Profile"),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 12,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(9),
                  height: 45,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(19)),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search), labelText: "Search"),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                        
                          child: Column(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage("img/maho.jpg"),
                              ),
                              Text(
                                "Your notes",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            child: Container(
                          height: 26,
                          width: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                              child: Icon(Icons.add, color: Colors.white)),
                        )),
                      ],
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      height: 70,
                      width: 800,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 10),
                        itemCount: photos.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(photos[index]),
                              ),
                              Text(
                                names[index],
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                              SizedBox(
                                width: 9,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: index == 0
                              ? Colors.grey[300]
                              : Colors.transparent),
                      child: Center(
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: index == 1
                              ? Colors.grey[300]
                              : Colors.transparent),
                      child: Center(
                        child: Text(
                          "Channels",
                          style: TextStyle(fontSize: 12, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 700,
                width: 400,
                child: index == 0 ? Hometab() :Communitytab(),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.chat_bubble_outlined,
                    color: Colors.grey,
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.people,
                    color: Colors.grey,
                  ),
                  Text(
                    "People",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.square_rounded,
                    color: Colors.grey,
                  ),
                  Text(
                    "Stories",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
