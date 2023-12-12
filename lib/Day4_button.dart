import 'package:flutter/material.dart';
class ButtonWrk extends StatefulWidget {
  const ButtonWrk({super.key});

  @override
  State<ButtonWrk> createState() => _ButtonWrkState();
}

class _ButtonWrkState extends State<ButtonWrk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Center(child: TextButton(onPressed: (){}, child: Text("click"),)),
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: ElevatedButton(onPressed: (){},child: Icon(Icons.arrow_right),),

            ),

          ),
          OutlinedButton(onPressed: (){}, child: Text("CLick")),
          TextButton.icon(onPressed:(){}, icon:Icon( Icons.search), label:Text("search")),


          ListTile(
            title: Text("MALE"),
            leading: Radio(
              value: null,
              onChanged: (Null? value) {  },
              groupValue: null,)

          )
        ],
      ),
    );
  }
}
