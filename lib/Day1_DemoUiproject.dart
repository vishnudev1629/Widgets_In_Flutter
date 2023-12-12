import 'package:flutter/material.dart';
class FirstSam extends StatefulWidget {
  const FirstSam({super.key});

  @override
  State<FirstSam> createState() => _FirstSamState();
}

class _FirstSamState extends State<FirstSam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.abc),
        title: Text("MY APP",
          style: TextStyle(
            color:Colors.black87
          ),
      ),
        ),
      body: Column(
        children:[
          Text("1"),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),


        ]

      ),
      );

  }
}
