import 'package:flutter/material.dart';
class BottomDemo extends StatefulWidget {
  const BottomDemo({super.key});

  @override
  State<BottomDemo> createState() => _BottomDemoState();
}


class _BottomDemoState extends State<BottomDemo> {
  int SelectedIndex =0;
  List<Widget>_WidgetOptions =<Widget>[
    Text("Home Page",style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold,color: Colors.red),),
    Text("Person",style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold,color: Colors.green),),
    Text("Search",style: TextStyle(fontSize: 50,fontWeight:FontWeight.bold,color: Colors.yellow),),
  ];
  void onItemTapped(int index){
   setState((){
   SelectedIndex = index;
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: _WidgetOptions.elementAt(SelectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.red,
          ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: "Person",
    backgroundColor: Colors.green,
    ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.yellow,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        currentIndex: SelectedIndex,
        selectedItemColor: Colors.black,
        iconSize: 40,
        onTap: onItemTapped,
        elevation: 10,
      ),
    );
  }
}

