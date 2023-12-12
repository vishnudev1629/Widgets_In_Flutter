import 'package:flutter/material.dart';
class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DRAWER"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
            width: 50,
          height: 150,
          color: Colors.blue,
          child:Padding(
            padding: const EdgeInsets.only(right: 170.0),
            child: Column(
            children: [
              CircleAvatar(
                //child: Image.asset("assets/image/messi.jpg",height: ,),

                radius: 30,
                backgroundImage: AssetImage("assets/image/messi.jpg"),
              ),
              SizedBox(height: 20,),
              Text("Vishnu Dev",style: TextStyle(fontSize: 20),),
              Text("Vishnu@gmail.com",style: TextStyle(fontSize: 15),),
            ],

        ),
          ),


            ),
             ListTile(
               leading: Icon(Icons.home),
               title: Text("Home"),
               onTap: (){
                 Navigator.pop(context);
               }
             ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text("Social"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
            ),
          ],

        ),
      ),

    );
  }
}
