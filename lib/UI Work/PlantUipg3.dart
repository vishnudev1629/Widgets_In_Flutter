import 'package:flutter/material.dart';
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
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
                    image: AssetImage("assets/image/img3.png"),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(180),
                  bottomLeft:Radius.circular(180) ),
              color:  Color(0xFF7CBC59),
            ),
          ),
          Text("Fast Doorstep Delivery",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text('Our delivery executive will deliver your',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          Text("order under 24 hours",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
