import 'package:flutter/material.dart';
class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  final _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          Container(
            color: Colors.orange,
            child: Center(
              child: Text("First Page"),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Second Page"),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("third Page"),
            ),
          ),
        ],
      ),
    );
  }
}
