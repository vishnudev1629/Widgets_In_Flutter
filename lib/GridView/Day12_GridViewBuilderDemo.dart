import 'package:flutter/material.dart';
class GridViewBuilder extends StatefulWidget {
  const GridViewBuilder({super.key});

  @override
  State<GridViewBuilder> createState() => _GridViewBuilderState();
}

class _GridViewBuilderState extends State<GridViewBuilder> {
  List<String>images =[
    "assets/image/Dhoni.jpg",
    "assets/image/messi.jpg",
    "assets/image/Mohanlal.jpg",
    "assets/image/Neymer.jpg",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2,
            crossAxisSpacing: 50,
            mainAxisSpacing: 50,
          ),
        itemBuilder:(BuildContext context,int index){
          return Image.asset(images[index]);
        },

      ),
    );
  }
}
