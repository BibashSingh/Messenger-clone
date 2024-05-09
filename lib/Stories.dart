import 'package:flutter/material.dart';
class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 231, 227, 227),
          title: Text(
            "Stories",
            style: TextStyle(
                fontSize: 35, color: Colors.black, fontWeight: FontWeight.bold),
          ),
         
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
                    color: Colors.amber,
                  ),
                );
              })),
          
        )
        );
        
  }
}