import 'package:flutter/material.dart';
class PageViewBuilderDemo extends StatefulWidget {
  const PageViewBuilderDemo({super.key});

  @override
  State<PageViewBuilderDemo> createState() => _PageViewBuilderDemoState();
}

class _PageViewBuilderDemoState extends State<PageViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 10,
          itemBuilder: (context,position){
            return Container(
              color:Colors.red,
              //color: position % 2 == 0 ? Colors.pink : Colors.cyan  ,
              child: Center(
                child: Text('Page$position'),
              ),
            );

          },
        scrollDirection: Axis.vertical,

          ),
    );
  }
}
