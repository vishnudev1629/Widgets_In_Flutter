import 'package:flutter/material.dart';
class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(
        children: [
          ListTile(
            title: Text("Status"),
            trailing: Icon(Icons.more_vert),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/image/Whatsapp.jpg"),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: 80,
                        child: Text("My status",textAlign: TextAlign.center,),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/messi.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 80,
                      child: Text("Messi",textAlign: TextAlign.center,),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/Mohanlal.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 80,
                      child: Text("Mohanlal",textAlign: TextAlign.center,),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/Dhoni.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 80,
                      child: Text("Dhoni",textAlign: TextAlign.center,),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/Neymer.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 80,
                      child: Text("Neymer",textAlign: TextAlign.center,),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/image/Ronaldo.jpg"),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 80,
                      child: Text("Ronaldo",textAlign: TextAlign.center,),
                    ),
                  ],
                ),

              ],
            ),
          ),
          ListTile(
            title: Text("Channels"),
            trailing: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
