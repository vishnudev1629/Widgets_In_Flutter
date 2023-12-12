import 'package:flutter/material.dart';
import 'package:new_project/WhatsappDemo/CallPageDemo.dart';
import 'package:new_project/WhatsappDemo/ChatsPageDemo.dart';
import 'package:new_project/WhatsappDemo/CommunitypageDemo.dart';
import 'package:new_project/WhatsappDemo/StatusPageDemo.dart';
class TabBarViewDemo extends StatefulWidget {
  const TabBarViewDemo({super.key});

  @override
  State<TabBarViewDemo> createState() => _TabBarViewDemoState();
}
List<Widget>pages=[
  CommunityPage(),
  ChatsPage(),
  StatusPage(),
  CallsPageDemo(),
];
class _TabBarViewDemoState extends State<TabBarViewDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: pages.length,
        child: Scaffold(
        appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(color: Colors.white),),
    backgroundColor: Color(0xff128C7E),
    actions: [
    Icon(Icons.camera_alt_outlined,color: Colors.white,),
    Icon(Icons.search,color: Colors.white,),
    Icon(Icons.more_vert,color: Colors.white,),
    ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people,color: Colors.white,)),
              Tab(
                child: Text("Chats", style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child: Text("Status",style: TextStyle(color: Colors.white),),
              ),
              Tab(
                child: Text("Calls",style: TextStyle(color: Colors.white),),
              ),

            ],

          ),
        ),
          body: TabBarView(
            children: pages
          ),
        ),
    );
  }
}
