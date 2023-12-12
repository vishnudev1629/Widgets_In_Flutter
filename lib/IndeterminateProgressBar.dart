import 'dart:async';

import 'package:flutter/material.dart';
class IndeterminateBarDemo extends StatefulWidget {
  const IndeterminateBarDemo({super.key});

  @override
  State<IndeterminateBarDemo> createState() => _IndeterminateBarDemoState();
}
bool isShow=false;
double _initial=0.0;
class _IndeterminateBarDemoState extends State<IndeterminateBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.blue,
        title: Text("Progress Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.green),
              value: _initial,
              strokeWidth: 7,
            ),
            isShow?Text("Downloading..."):Text(""),
            SizedBox(
              height: 100,
            ),
            LinearProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.red),
              value: _initial,
              minHeight: 10,
            ),
            isShow? Text("Loading..."):Text(""),
            SizedBox(
              height: 150,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    display();
                    isShow=true;
                  });
                }, child: Text("Download"),
            ),
          ],
        ),
      ),

    );
  }
  void display(){
    Timer.periodic(Duration(milliseconds: 100),(timer){
      setState(() {
        _initial=_initial+0.05;
      });
    });
  }
}
