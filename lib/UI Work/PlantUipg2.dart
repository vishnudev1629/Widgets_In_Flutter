import 'package:flutter/material.dart';
class Food2 extends StatefulWidget {
  const Food2({super.key});

  @override
  State<Food2> createState() => _Food2State();
}

class _Food2State extends State<Food2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 650,
            height: 350,
            child: Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage("assets/image/img2.png"),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(180),
                  bottomLeft:Radius.circular(180) ),
              color:  Color(0xff7CBC59),
            ),
          ),
          Text("Real Time Reporting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text('Keeping track of real-time delivery',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          Text(" location ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),

        ],
      ),
    );
  }
}
