import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> photos = [
    "img/a.jpg",
    "img/b.jpg",
    "img/c.jpg",
    "img/d.jpg",
    "img/e.jpg",
    "img/f.jpeg",
    "img/g.jpeg",
    "img/h.jpeg",
    "img/i.jpeg",
    "img/k.jpg",
  ];
  List<String> names = [
    "Bibash Singh",
    "The weeknd",
    "Drake",
    "Spiderman",
    "Boggyman",
    "Brock",
    "The Rock",
    "My hand",
    "Mobile ",
    "Laptop",
  ];
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
          CircleAvatar(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.black,
            ),
            backgroundColor: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          CircleAvatar(
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
            backgroundColor: Colors.grey,
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
      body: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          Center(
            //search bar////////////////////////////////*/
            child: Container(
              height: 45,
              width: 325,
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 231, 231),
                  borderRadius: BorderRadius.circular(17)),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search_outlined), hintText: "Search"),
              ),
            ),
            //seach bar////////////////////////////////////*/
          ),
          SizedBox(
            height: 16,
          ),
          //Story section ....................................../
          SingleChildScrollView(
            
            scrollDirection: Axis.horizontal,
            child: Container(
              height: 3000,
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Stack(
                    children: [
                      Container(
                        // height: 122,
                        //   color: Colors.red,
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
                        child:
                            Center(child: Icon(Icons.add, color: Colors.white)),
                      )),
                    ],
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 40,
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
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                   Container(
                    height: 40,
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
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Story section ......................................
SizedBox(height: 12,),
Container(
  height: 120,
  color: Colors.amber,
)
        ],
      ),
    );
  }
}
