import 'package:flutter/material.dart';
class DayWrk extends StatefulWidget {
  const DayWrk({super.key});

  @override
  State<DayWrk> createState() => _DayWrkState();
}

class _DayWrkState extends State<DayWrk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Flutter"),
        actions: [Icon(Icons.search)],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 300,
            height: 200,
            //color: Colors.lightBlue,
            decoration: BoxDecoration(
              color: Colors.tealAccent,
              borderRadius: BorderRadius.circular(25),
            ),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("NAME:"),
                Text("AGE:"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 90,
                      height: 70,
                      //color: Colors.green,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text("OK"),

                      ),
                    ),
                    Container(
                      width: 90,
                      height: 70,
                     // color: Colors.red,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(25)
                      ),
                      child: Center(
                        child: Text("CANCEL"),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              width: 300,
              height: 200,
              //color: Colors.blueGrey,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(25)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 110,
                    height: 50,
                   // color: Colors.purpleAccent,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                    ),
                    child: Center(
                      child: Text("COURSE NAME"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 90,
                          height: 70,
                          //color: Colors.green,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text("ACCEPT"),
                          ),
                        ),
                        Container(
                          width: 90,
                          height: 70,
                          //color: Colors.red,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text("REJECT"),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],

              ),
            ),
          ),
        ],
      ),
    );

  }
}
