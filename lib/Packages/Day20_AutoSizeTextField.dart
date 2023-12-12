import 'package:flutter/material.dart';
import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:auto_size_text/auto_size_text.dart';
class AutoSizedTextFieldDemo extends StatefulWidget {
  const AutoSizedTextFieldDemo({super.key});
  @override
  State<AutoSizedTextFieldDemo> createState() => _AutoSizedTextFieldDemoState();
}
class _AutoSizedTextFieldDemoState extends State<AutoSizedTextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: AutoSizeText(
              'The text to display',
              style: TextStyle(fontSize: 20),
              maxLines: 2,
            ),
          ),
        ),
      ) ,
    );
  }
}
