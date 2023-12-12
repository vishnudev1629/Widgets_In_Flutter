import 'package:flutter/material.dart';
class SnackBarDemo extends StatefulWidget {
  const SnackBarDemo({super.key});

  @override
  State<SnackBarDemo> createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
      ),
      body: ElevatedButton(
        onPressed: (){
        final snackBar = SnackBar(
            content: Text("Successfully Uploaded"),
          action:SnackBarAction(
            label: 'Undo',
            onPressed: (){},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }, child:Text("Submit"),
      ),
    );
  }
}
