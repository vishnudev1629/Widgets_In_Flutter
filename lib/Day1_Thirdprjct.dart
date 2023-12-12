import 'package:flutter/material.dart';
class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.add,),
        title: Text("Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

              Container(
    width: 100,
    height: 100,
    color: Colors.green,
                child: Center(
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.blue,
                  ),
                ),
    ),

        Container(
        width: 100,
        height: 100,
        color: Colors.green,
          child: Center(
              child: Container(
                height: 40,
                width: 40,
                color: Colors.blue
              )),
        ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    color: Colors.blue,
                  )),
            ),


    ],
        ),
      ),
    );
  }
}
