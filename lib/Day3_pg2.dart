import 'package:flutter/material.dart';
class ZooplePage extends StatefulWidget {
  const ZooplePage({super.key});

  @override
  State<ZooplePage> createState() => _ZooplePageState();
}

class _ZooplePageState extends State<ZooplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 200,
              child: Image.asset("assets/image/Zoople.png"),
            ),
            Text("WELCOME TO ZOOPLE",style: TextStyle(fontSize: 25),),
            Padding(
              padding: const EdgeInsets.all(100),
              child: Center(
                child: Container(
                  width: 150,
                  height: 50,
                  color: Colors.tealAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue"),
                      Icon(Icons.arrow_right),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
