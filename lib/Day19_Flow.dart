import 'package:flutter/material.dart';
class FlowDemo extends StatefulWidget {
  const FlowDemo({super.key});

  @override
  State<FlowDemo> createState() => _FlowDemoState();
}

class _FlowDemoState extends State<FlowDemo>
  with SingleTickerProviderStateMixin{
    late AnimationController menuAnimation;
    IconData lastIconClicked = Icons.notifications;
    final List<IconData>menuItems =<IconData>[
      Icons.home,
      Icons.new_releases,
      Icons.notifications,
      Icons.settings,
      Icons.menu,
    ];
    void initState(){
      super.initState();
      menuAnimation=AnimationController(
        duration: Duration(milliseconds: 250),
        vsync:this,);
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Flow(
        delegate: FlowMenuDelegate(menuAnimation:menuAnimation),
        children: menuItems.map<Widget>(
            (IconData icon)=> Padding(padding: EdgeInsets.all(5),
              child: FloatingActionButton(
                backgroundColor: lastIconClicked==icon ? Colors.orangeAccent:Colors.grey,
                splashColor: Colors.orangeAccent,
                onPressed: (){
                  if(icon != Icons.menu){
                    setState(() =>
                      lastIconClicked = icon);
                  }
                  menuAnimation.status==AnimationStatus.completed
                  ? menuAnimation.reverse() :menuAnimation.forward();
                },
                child: Icon(icon),
              ),
            ),
        ) .toList(),

      ),
    );
  }
}
class FlowMenuDelegate extends FlowDelegate{
  FlowMenuDelegate({required this.menuAnimation})
  :super(repaint: menuAnimation);
  final Animation<double> menuAnimation;
  bool shouldRepaint(FlowMenuDelegate oldDelegate){
    return menuAnimation != oldDelegate.menuAnimation;
  }
  void paintChildren(FlowPaintingContext context){
    double dx = 0.0;
    for(int i=0;i<=context.childCount;++i){
      dx= context.getChildSize(i)!.width * i;
      context.paintChild(i,transform: Matrix4.translationValues(dx * menuAnimation.value, 0, 0));
    }

  }
}
