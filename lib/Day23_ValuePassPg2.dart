import 'package:flutter/material.dart';
class ReceiveDetails extends StatefulWidget {
  String name;
  ReceiveDetails({required this.name});
 // ReceiveDetails({super.key});

  @override
  State<ReceiveDetails> createState() => _ReceiveDetailsState();
}

class _ReceiveDetailsState extends State<ReceiveDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INFORMATION"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Your Details"),
          Text("${widget.name}")

        ],
      ),

    );
  }
}
