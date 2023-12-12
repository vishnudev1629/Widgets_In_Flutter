import 'package:flutter/material.dart';
class DeterminateProgressBarDemo extends StatefulWidget {
  const DeterminateProgressBarDemo({super.key});

  @override
  State<DeterminateProgressBarDemo> createState() => _DeterminateProgressBarDemoState();
}
bool isLoading=false;
class _DeterminateProgressBarDemoState extends State<DeterminateProgressBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Bar'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              width: 50,
              height: 50,
              child: isLoading? CircularProgressIndicator():Container(width: 50,height: 50,),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 500,
              height: 10,
              child: isLoading? LinearProgressIndicator():Container(width: 500,height: 10,),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: (){
                  setState(() {
                    isLoading=true;
                  });
                }, child: Text("Submit"),
            ),
          ],
        ),
      ),

    );
  }
}
