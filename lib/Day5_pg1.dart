import 'package:flutter/material.dart';

class RadioButtonDemo extends StatefulWidget {
  const RadioButtonDemo({Key? key}) : super(key: key);

  @override
  State<RadioButtonDemo> createState() => _RadioButtonDemoState();
}

enum Fruit { apple, banana , grape,guava }

/// private State class that goes with MyStatefulWidget
class _RadioButtonDemoState extends State<RadioButtonDemo> {
  Fruit? _fruit = Fruit.apple;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("select your fav fruits"),
              ListTile(
                title: const Text('Apple'),
                leading: Radio<Fruit>(
                  value: Fruit.apple,
                  groupValue: _fruit,
                  onChanged: (Fruit? value) {
                    setState(() {
                      _fruit = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Banana'),
                leading: Radio<Fruit>(
                  value: Fruit.banana,
                  groupValue: _fruit,
                  onChanged: (Fruit? value) {
                    setState(() {
                      _fruit = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Grape'),
                leading: Radio<Fruit>(
                  value: Fruit.grape,
                  groupValue: _fruit,
                  onChanged: (Fruit? value) {
                    setState(() {
                      _fruit = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Guave'),
                leading: Radio<Fruit>(
                  value: Fruit.guava,
                  groupValue: _fruit,
                  onChanged: (Fruit? value) {
                    setState(() {
                      _fruit = value;
                    });
                  },
                ),
              ),
            ],
         ),
        );
    }
}