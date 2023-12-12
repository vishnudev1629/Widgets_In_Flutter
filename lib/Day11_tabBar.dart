import 'package:flutter/material.dart';
class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Tab Bar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.add_a_photo),),
              Tab(icon: Icon(Icons.search_off),),
            ],
          ),
        ),

    ),
    );
  }
}
