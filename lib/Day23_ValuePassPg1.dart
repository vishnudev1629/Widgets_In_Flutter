import 'package:flutter/material.dart';
import 'package:new_project/Day23_ValuePassPg2.dart';
class ValuePassDemo extends StatefulWidget {
  const ValuePassDemo({super.key});

  @override
  State<ValuePassDemo> createState() => _ValuePassDemoState();
}

class _ValuePassDemoState extends State<ValuePassDemo> {
  final _nameController=TextEditingController();
  final _placeController=TextEditingController();
  final _ageController=TextEditingController();
  final _courseController=TextEditingController();
  final _yearController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INFORMATION"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Text("Enter Your Details",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("Name :"),
                  )),
              Padding(
                padding: const EdgeInsets.only(top:15.0,right: 40),
                child: SizedBox(
                  height: 40,
                  width: 220,
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black,width: 10)
                      )
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("Place"),
                  )),
              Padding(
                padding: const EdgeInsets.only(top:15.0,right: 40),
                child: SizedBox(
                  height: 40,
                  width: 220,
                  child: TextFormField(
                    controller: _placeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 10)
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("Age :"),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 160.0,top: 15),
                child: SizedBox(
                  height: 40,
                  width: 100,
                  child: TextFormField(
                    controller: _ageController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 10)
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("Course"),
                  )),
              Padding(
                padding: const EdgeInsets.only(top:15.0,right: 40),
                child: SizedBox(
                  height: 40,
                  width: 220,
                  child: TextFormField(
                    controller: _courseController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black,width: 10)
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text("Year :"),
                  )),
              Padding(
                padding: const EdgeInsets.only(top:15.0,right: 40),
                child: SizedBox(
                  height: 40,
                  width: 220,
                  child: TextFormField(
                    controller: _yearController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue,width: 15)
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Center(
              child: TextButton(onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>
                        ReceiveDetails(name:_nameController.text.toString())));
              },
                  child: Text("Send Data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
            ),
          ),

        ],
      ),
    );
  }
}
