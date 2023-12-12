import 'package:flutter/material.dart';
class CallsPageDemo extends StatefulWidget {
  const CallsPageDemo({super.key});

  @override
  State<CallsPageDemo> createState() => _CallsPageDemoState();
}

class _CallsPageDemoState extends State<CallsPageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.link),
            title: Text("Create call linkl"),
            subtitle: Text("share a link for your whatsapp call"),
          ),
          Text("Recent"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/image/messi.jpg"),
            ),
            title: Text("Messi"),
            subtitle:Text("Today,10.28 am"),
            trailing: Icon(Icons.call),

          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/image/Mohanlal.jpg"),
            ),
            title: Text("Mohanlal"),
            subtitle:Text("Today,11.10 am"),
            trailing: Icon(Icons.video_call),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/image/Dhoni.jpg"),
            ),
            title: Text("Dhoni"),
            subtitle:Text("Today,1.10 pm"),
            trailing: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
