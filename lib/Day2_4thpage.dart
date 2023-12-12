import 'package:flutter/material.dart';
class HomeWrk extends StatefulWidget {
  const HomeWrk({super.key});

  @override
  State<HomeWrk> createState() => _HomeWrkState();
}

class _HomeWrkState extends State<HomeWrk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: const Icon(Icons.add_a_photo),
        title: const Text("FLUTTER"),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                //color: Colors.limeAccent,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 25),
                    borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text("1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                //color: Colors.limeAccent,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue,width:10 ),
                  borderRadius: BorderRadius.circular(50),
                )
                ,
                child: const Center(
                  child: Text("2"),
              ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
               //color: Colors.limeAccent,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.lightBlueAccent,width: 15),
                    top: BorderSide(color: Colors.lightBlue,width: 10),
                    right: BorderSide(color: Colors.blueAccent,width: 5),
                    bottom: BorderSide(color: Colors.blue,width: 3),
                  ),
                ),
                child: const Center(
                  child: Text("3"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                //color: Colors.limeAccent,
                decoration: BoxDecoration(
                  color: Colors.green,
                    border: Border.all(color: Colors.red,width: 10),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                ),
                child: const Center(
                  child: Text("4"),
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.limeAccent,
                child: const Center(
                  child: Text("5"),
                )
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.limeAccent,
                child: const Center(
                  child: Text("6"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
