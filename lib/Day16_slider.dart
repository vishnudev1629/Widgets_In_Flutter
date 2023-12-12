

import 'package:flutter/material.dart';
class SliderDemo extends StatefulWidget {
  const SliderDemo({super.key});

  @override
  State<SliderDemo> createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _SliderValue=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.volume_up,size: 40,),

            Slider(
                value: _SliderValue,
                max: 30,
                divisions: 10,
                activeColor: Colors.green,
                inactiveColor: Colors.red,
                label: "VOLUME",
                onChanged: (double newValue){
                  setState(() {
                    _SliderValue=newValue;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
