import 'package:flutter/material.dart';
class TestFieldDemo extends StatefulWidget {
  const TestFieldDemo({super.key});

  @override
  State<TestFieldDemo> createState() => _TestFieldDemoState();
}

class _TestFieldDemoState extends State<TestFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                labelText: "USER NAME",
                hintText: "ENTER YOUR NAME",
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                      labelText:"PASSWORD",
                      hintText: "ENTER YOUR PASSWORD",
                ),
              ),
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text("Sign In")),

          ],
        ),
      ),
    );
  }
}
