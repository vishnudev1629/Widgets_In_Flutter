import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/profile_page_shared_preference.dart';
class EvarStayHomepg extends StatefulWidget {
  const EvarStayHomepg({super.key});

  @override
  State<EvarStayHomepg> createState() => _EvarStayHomepgState();
}

class _EvarStayHomepgState extends State<EvarStayHomepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context)=>ProfilePage()));
    },
            icon: Icon(Icons.person)),
        title: Text("Ever Stays"),
        backgroundColor: Colors.indigo,
      ),
      body: Column(

      ),
    );
  }
}
