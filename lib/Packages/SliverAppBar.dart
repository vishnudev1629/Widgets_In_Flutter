import 'package:flutter/material.dart';
import 'package:new_project/UI%20Work/FoodieUiprojct.dart';
import 'package:sliver_app_bar_builder/sliver_app_bar_builder.dart';
class SliverAppbarDemo extends StatefulWidget {
  const SliverAppbarDemo({super.key});

  @override
  State<SliverAppbarDemo> createState() => _SliverAppbarDemoState();
}

class _SliverAppbarDemoState extends State<SliverAppbarDemo> {
  bool _stretch=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.red,
            stretch: _stretch,
            onStretchTrigger: () async {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ProjectUiWrkDemo();
              }));
            },
            stretchTriggerOffset: 300.0,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/image/Zoople.png"),
                    fit: BoxFit.fill,

                  )
                ),
              )
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return Container(

                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

