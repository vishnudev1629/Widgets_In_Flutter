import 'package:flutter/material.dart';
import 'package:new_project/UI%20Work/PlantUIpg1.dart';
import 'package:new_project/UI%20Work/PlantUipg2.dart';
import 'package:new_project/UI%20Work/PlantUipg3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SmoothPageDemo extends StatefulWidget {
  const SmoothPageDemo({super.key});

  @override
  State<SmoothPageDemo> createState() => _SmoothPageDemoState();
}

class _SmoothPageDemoState extends State<SmoothPageDemo> {
  final _controller=PageController();
  @override
  Widget build(BuildContext context) {
    final pages = [
      Food1(),
      Food2(),
      Page3(),
    ];
    return  Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children: <Widget>[
        SizedBox(height: 16),
    SizedBox(
       height: 500,
    child: PageView.builder(
    controller: _controller,
    // itemCount: pages.length,
    itemBuilder: (_, index) {
    return pages[index % pages.length];
    },
    ),
    ),
    SmoothPageIndicator(
    controller: _controller,
    count: pages.length,
    effect: const WormEffect(
    dotHeight: 13,
    dotWidth: 13,
    activeDotColor: Color(0xFF4F7B39),
    type: WormType.thinUnderground,
    ),
    ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 50,
            width: 130,
            child: ElevatedButton(onPressed: (){}, child: Text("Next",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4F7B39),
                  foregroundColor: Colors.white,
                )
              ),
          ),
        ],
        ),
        ),
        ),
    );
  }
}
