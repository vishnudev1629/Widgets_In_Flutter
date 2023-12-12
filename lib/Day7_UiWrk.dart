

import 'package:flutter/material.dart';
class DemoWork extends StatefulWidget {
  const DemoWork({super.key});

  @override
  State<DemoWork> createState() => _DemoWorkState();
}
bool? ischecked=false;
class _DemoWorkState extends State<DemoWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: Text("Welcome!",style: TextStyle(fontSize: 40,color: Colors.orange),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text("Login",style: TextStyle(fontSize: 30,color: Colors.orange,fontWeight:FontWeight.bold ),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Text("To Your Account",style: TextStyle(color: Colors.orange,fontSize: 17),),
            ),
             SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.orange, ),
                borderRadius: BorderRadius.circular(13),),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange,),
              borderRadius: BorderRadius.circular(13)),
              border: OutlineInputBorder(),
                labelText: "USER NAME",
                prefixIcon: Icon(Icons.double_arrow_sharp),
                prefixIconColor: Colors.orange,
            ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
              prefixIcon: Icon(Icons.key),
                prefixIconColor: Colors.orange,
                suffixIcon: Icon(Icons.keyboard),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange,),
                borderRadius: BorderRadius.circular(13)),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange,),
                borderRadius: BorderRadius.circular(13)),
                border: OutlineInputBorder(),
                labelText: "PASSWORD",
              ),
            ),
            CheckboxListTile(
              title: Text("Remember Me!",style: TextStyle(color: Colors.orange),),
                activeColor: Colors.orange,
                value: ischecked,
                onChanged: (value){
                  setState(() {
                   ischecked=value;
                  });
                }
            ),
            Container(
              width: 150,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.orange,
                  side: BorderSide(color: Colors.orange),
                  textStyle: TextStyle(
                    fontSize: 23,

                  ),
                ),
                  onPressed: (){},
                icon: Icon(Icons.circle_rounded),
                label: Row(
                  children: [
                    Text("Enter"),
                    Icon(Icons.arrow_right_alt),

                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text("OR",style: TextStyle(fontSize: 20),),
           SizedBox(height: 20,),
           Container(
             width: 148,
             child: ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.orange,
                 foregroundColor: Colors.white,
                 textStyle: TextStyle(
                   fontSize: 25,
                 ),
               ),
                 onPressed: (){},
                 child: Row(
                   children: [
                     Text("Sign In"),
                     Icon(Icons.arrow_right_alt),
                   ],
                 )),
           ),
          ],
        ),
      ),
    );
  }
}
