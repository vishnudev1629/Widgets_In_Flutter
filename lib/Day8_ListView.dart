import 'package:flutter/material.dart';
class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST VIEW"),
      ),
      body: ListView.builder(
        itemCount: 111,
          itemBuilder:(BuildContext context,int index)
          {
           return Text("abc");
          }
      ),
    );
  }
}
