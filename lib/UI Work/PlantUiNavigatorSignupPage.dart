import 'package:flutter/material.dart';
class NavigatorSignupPage extends StatefulWidget {
  const NavigatorSignupPage({super.key});

  @override
  State<NavigatorSignupPage> createState() => _NavigatorSignupPageState();
}

class _NavigatorSignupPageState extends State<NavigatorSignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children:[
        Image.asset("assets/image/logoimg1.png",
        width: 200,
        height: 150,),
    Image.asset("assets/image/logoimg2.png",
    width: 300,
    height: 180,),
    Padding(
    padding: const EdgeInsets.all(14.0),
    child: TextField(
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(width:2,color: Colors.green,
    ),
    borderRadius: BorderRadius.circular(35),
    ),
    hintText: "Email Id"
    ),
    ),
    ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:2,color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  hintText: "Phone Number"
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              color: Color(0xFF4F7B39),
              borderRadius: BorderRadius.circular(17),
            ),
            child: Center(
              child: TextButton(onPressed: (){},
                  child: Text("Next",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
            ),
          ),
          ],
        ),
    ),
    );
  }
}
