import 'package:flutter/material.dart';
class ListViewSeparateDemo extends StatefulWidget {
  const ListViewSeparateDemo({super.key});

  @override
  State<ListViewSeparateDemo> createState() => _ListViewSeparateDemoState();
}

class _ListViewSeparateDemoState extends State<ListViewSeparateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LIST VIEW"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int index){
            return Text("ABC");
          },
          separatorBuilder: (BuildContext context,int index){
            return Divider(
              height: 50,
              color: Colors.red,
            );
    },
          itemCount: 50,
      ),
    );
  }
}
