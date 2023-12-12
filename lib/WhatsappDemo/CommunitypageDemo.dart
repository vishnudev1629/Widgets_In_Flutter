import 'package:flutter/material.dart';
class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   ListTile(
        leading: CircleAvatar(
          child: Icon(Icons.people),

        ),
        title: Text("New community"),
      ),
    );
  }
}
