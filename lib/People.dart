import 'package:flutter/material.dart';

class People extends StatefulWidget {
  const People({super.key});

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {
   List<String> people = [
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
   List<String> Pnames = [
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
            "People",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            SizedBox(
              width: 5,
            ),
            CircleAvatar(
              child: Icon(
                Icons.perm_contact_cal_sharp,
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
      body:ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
        return ListTile(
          leading:  Container(
              height: 1000,
              // width: 100,
              child: Stack(
                        children: [
                          Container(
                            height: 50,
                          
                            child: CircleAvatar(
backgroundImage: AssetImage(people[index]),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            
                              child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              
                              shape: BoxShape.circle,
                              
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.green,

                            
                            ),
                          )),
                        ],
                      ),

            ),
            title: Text(Pnames[index],style: TextStyle(fontWeight: FontWeight.bold),),
            trailing: Icon(Icons.phone_android_sharp),
        ); 
      }))
    );
  }
}
