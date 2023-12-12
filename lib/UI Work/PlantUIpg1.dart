import 'package:flutter/material.dart';
class Food1 extends StatefulWidget {
  const Food1({super.key});

  @override
  State<Food1> createState() => _Food1State();
}

class _Food1State extends State<Food1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SingleChildScrollView(
            child: Container(
              width: 750,
              height: 350,
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image:DecorationImage(
                      image: AssetImage("assets/image/img1.png"),
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(174),
                    bottomLeft:Radius.circular(174 ) ),
                color: Color(0xff7CBC59),
              ),
            ),
          ),
          Text("Shop for your daily needs",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 20,
          ),
          Text('Set your delivery location. Choose your',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          Text(" groceries from a wide range of our ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          Text("required products",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
