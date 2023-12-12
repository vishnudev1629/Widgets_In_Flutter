import 'package:flutter/material.dart';
class StackDemo extends StatefulWidget {
  const StackDemo({super.key});

  @override
  State<StackDemo> createState() => _StackDemoState();
}

class _StackDemoState extends State<StackDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        height: 1100,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple[900],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              width: double.infinity,
              height: 730,
            ),
      Container(
        decoration: BoxDecoration(
          color: Colors.purple[800],
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
        ),
        width: double.infinity,
        height: 550,
      ),
            Container(
              decoration: BoxDecoration(
                color: Colors.redAccent[400],
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              width: double.infinity,
              height: 350,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              width: double.infinity,
              height: 170,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:60.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/image/Mohanlal.jpg"),
                          radius: 30,
                        ),
                        Text("YOU"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                           backgroundImage: AssetImage("assets/image/Stockarrowicon.png"),
                          radius: 30,
                        ),
                        Text("TRENDING"),
                      ],
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            child: Icon(Icons.health_and_safety_rounded),
                            radius: 30,
                          ),
                          Text("HEALH"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
