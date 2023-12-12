import 'package:flutter/material.dart';
class ButtonDemo extends StatefulWidget {
  const ButtonDemo({super.key});

  @override
  State<ButtonDemo> createState() => _ButtonDemoState();
}
 int? options;
class _ButtonDemoState extends State<ButtonDemo> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          ListTile(
            title: Text("MALE"),
            leading: Radio(
              value: 1,
              groupValue: options,
              onChanged: (value){
                setState(() {
                  options=value;
                });
              }
            ),
          ),
          ListTile(
            title: Text("FEMALE"),
            leading: Radio(
                value: 2,
                groupValue: options,
                onChanged: (value){
                  setState(() {
                    options=value;
                  });
                }
            ),
          ),
          ListTile(
            title: Text("MALE"),
            leading: Radio(
                value: 3,
                groupValue: options,
                onChanged: (value){
                  setState(() {
                    options=value;
                  });
                }
            ),
          ),
        ],
      ),
    );
  }
}
