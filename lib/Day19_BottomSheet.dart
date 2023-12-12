import 'package:flutter/material.dart';
class ModelBottomSheetDemo extends StatefulWidget {
  const ModelBottomSheetDemo({super.key});

  @override
  State<ModelBottomSheetDemo> createState() => _ModelBottomSheetDemoState();
}

class _ModelBottomSheetDemoState extends State<ModelBottomSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          showModalBottomSheet(
              context: context,
            backgroundColor: Colors.red,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17.0),
            ),
              builder: (BuildContext context){
                return SizedBox(
                    height: 200,
                    child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                    Text('erorrr'),
                ],
                ),
                    ),
                );

              },
          );
        },
        child: Text('Show'),
          style: ElevatedButton.styleFrom(
            primary: Colors.green,
            textStyle: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
