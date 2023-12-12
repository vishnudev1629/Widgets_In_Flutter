import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/Home_Page.dart';
class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:[
            Image.asset("assets/image/Hotellogin.webp",
              width: 200,
              height: 150,),
            SizedBox(
              height: 50,
            ),
            Text("Enable location",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black)),
            Padding(
              padding: const EdgeInsets.only(left:60,right: 60),
              child: Text("We will need your location to give you",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
            ),
            Text("better experience",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),


            SizedBox(
              height: 50,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF083663),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: TextButton(onPressed: (){
                },
                    child: Text("Enable Location",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>EvarStayHomepg()));
            },
                child: Text("Not now",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black))),
          ],
        ),
      ),
    );
  }
}
