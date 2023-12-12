import 'package:flutter/material.dart';
class CheckButtonDemo extends StatefulWidget {
  const CheckButtonDemo({super.key});

  @override
  State<CheckButtonDemo> createState() => _CheckButtonDemoState();
}
bool? ischecked=false;
bool? options=false;
class _CheckButtonDemoState extends State<CheckButtonDemo> {
  bool? get value => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: ListTile(
              title: Text("Selected"),
              leading: Checkbox(
                  value:ischecked,
                onChanged: (value){
                setState(() {
                  ischecked=value;
                });
                }
              ),
            ),
          ),
          CheckboxListTile(title:Text("Selected"),
              value: options,
              onChanged: (value){
            setState(() {
              options=value;
            });
    }
          ),
        ],
      ),
    );
  }
}
