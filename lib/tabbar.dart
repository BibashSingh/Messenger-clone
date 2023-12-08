import 'package:flutter/material.dart';

class Tabbody extends StatefulWidget {
  const Tabbody({super.key});

  @override
  State<Tabbody> createState() => _TabbodyState();
}

class _TabbodyState extends State<Tabbody> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2,vsync: this);
    
    return Scaffold(
        
        body: TabBar(tabs: [
          Tab(
            child: Container(
              height: 45,
width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300]
              ),
              child: Center(child: Text("Home",style: TextStyle(fontSize: 18,color:Colors.black),),),
            ),
            
          ),
          Tab(
            // child:Text("Communities") ,
          ),
        ]));
  }
}
