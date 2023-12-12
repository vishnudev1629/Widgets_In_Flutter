import 'package:flutter/material.dart';
class ChangingClrDemo extends StatefulWidget {
  const ChangingClrDemo({super.key});

  @override
  State<ChangingClrDemo> createState() => _ChangingClrDemoState();
}

class _ChangingClrDemoState extends State<ChangingClrDemo> {
  bool Click=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COLORS"),
        backgroundColor:Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  children: [
                    // Container(
                    //   width: 150,
                    //   height: 150,
                    //   color: (Click==false)? Colors.deepPurple:Colors.lightGreenAccent,
                    // ),
                    // Container(
                    //   width: 150,
                    //   height: 150,
                    //   color: (Click==false)? Colors.purpleAccent:Colors.yellow,
                    // ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    color: (Click==false)? Colors.blue:Colors.green,
                  ),
                  // Container(
                  //   width: 150,
                  //   height: 150,
                  //   color: (Click==false)? Colors.brown:Colors.indigoAccent,
                  // ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(50),
              child: SizedBox(
                width: 131,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                    onPressed: (){
                  setState(() {
                    Click=!Click;
                  });
                }, child: Center(
                  child: Row(
                    children: [
                      Text("Next",style: TextStyle(fontSize: 20),),
                      Icon((Click==false)?Icons.keyboard_double_arrow_right:Icons.keyboard_arrow_right,size: 40,),
                    ],
                  ),
                )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
