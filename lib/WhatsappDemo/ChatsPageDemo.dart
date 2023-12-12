import 'package:flutter/material.dart';
class ChatsPage extends StatefulWidget {
  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:  ListView.separated(itemBuilder: (BuildContext context,int index){
         return ListTile(
           leading: CircleAvatar(

             backgroundImage: AssetImage("assets/image/Whatsapp.jpg"),

           ),
           title: Text("Contact Number"),
           subtitle: Text("Message"),

         );
       } ,
         separatorBuilder: (BuildContext context,int index) {
           return Divider();
         },
         itemCount: 10,
       ),
    );
  }
}
