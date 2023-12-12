import 'package:flutter/material.dart';
class WorkDemo extends StatefulWidget {
  const WorkDemo({super.key});

  @override
  State<WorkDemo> createState() => _WorkDemoState();
}
bool? ischecked=false;
bool? ischecked1=false;
bool? ischecked2=false;
bool? ischecked3=false;

class _WorkDemoState extends State<WorkDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          children: [
            Text("SELECT LANGUAGE",style: TextStyle(fontSize: 25,color: Colors.lightBlue),),
            CheckboxListTile(
              secondary: Icon(Icons.arrow_right),
                title:Text("MALAYALAM"),
                subtitle:Text("Read and Write"),
                value: ischecked,
                onChanged:(value){
                  setState(() {
                    ischecked=value;
                  });
                }
            ),
            CheckboxListTile(
                title:Text("ENGLISH"),
                subtitle:Text("Read and Write"),
                value: ischecked1,
                onChanged:(value){
                  setState(() {
                    ischecked1=value;
                  });
                }
            ),
            CheckboxListTile(
                title:Text("HINDI"),
                subtitle:Text("Read and Write"),
                value: ischecked2,
                onChanged:(value){
                  setState(() {
                    ischecked2=value;
                  });
                }
            ),
            CheckboxListTile(
                title:Text("TAMIL"),
                subtitle:Text("Read and Write"),
                value: ischecked3,
                onChanged:(value){
                  setState(() {
                    ischecked3=value;
                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
