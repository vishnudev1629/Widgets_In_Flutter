import 'package:flutter/material.dart';
class GridViewCountdemo extends StatefulWidget {
  const GridViewCountdemo({super.key});

  @override
  State<GridViewCountdemo> createState() => _GridViewCountdemoState();
}

class _GridViewCountdemoState extends State<GridViewCountdemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
        backgroundColor: Colors.blue,
      ),
      body:GridView.count(
          crossAxisCount: 3,
        crossAxisSpacing: 4,
        mainAxisSpacing: 8,
        children: [
          Container(
            child: Center(child: Text("Welcome",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),)),
          ),
          Container(
              child: Center(
                  child: Text("Mohanlal",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold),))),
          Image.asset('assets/image/Mohanlal.jpg'),
          Container(
            color: Colors.green,
              child: Column(
                children: [
                  Text("Website",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Icon(Icons.link),
                ],
              ),
          ),
          Container(
            color: Colors.tealAccent,
            child: Column(
              children: [
                Center(child: Text("Chat in Whatsapp",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                Center(child: Image.asset("assets/image/Whatsapp.jpg",height: 50,width: 50,)),
              ],
            ),
          )
        ],
      ),


    );
  }
}
