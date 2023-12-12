import 'package:flutter/material.dart';
class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({super.key});

  @override
  State<TextFormFieldDemo> createState() => _TextFormFieldDemoState();
}
int? options;
class _TextFormFieldDemoState extends State<TextFormFieldDemo> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Form(
          key: _formkey,
          child: ListView(
            children: [
              Text("WELCOME",style: TextStyle(fontSize: 40,color: Colors.red),),
              SizedBox(height: 30,),
              Text("LOGIN",style: TextStyle(fontSize: 30,color: Colors.red),),
              Text("To Your Account",style: TextStyle(fontSize: 19,color: Colors.red),),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  icon:Icon (Icons.person),
                  labelText: "Name",
                ),


              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon:Icon (Icons.arrow_right),
                  labelText: "Age",
                ),


                validator: (value) {
                  if (value==null||value.isEmpty){
                    return 'please enter your age';
                  }
                  return null;
                },

              ),
           Text("Select your gender"),
              RadioListTile(
                title: Text("Male"),
                value: 1,
                  onChanged: (Value){
                setState(() {
                  options=Value;
                });
                  },
                  groupValue:options,
              ),
              RadioListTile(
                title: Text("Female"),
                value: 2,
                onChanged: (Value){
                  setState(() {
                    options=Value;
                  });
                },
                groupValue:options,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  icon:Icon (Icons.phone),
                  labelText: "Mob.NO",
                ),
                validator: (value){
    if(value!.isEmpty){
    return 'enter your mob.no';
    }else if(value!.length <=10){
    return 'please enter 10 digit number';
    }else if(value!.length>=11){
      return '10 digit number only';
    }
    return null;
    },
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon:Icon (Icons.email),
                  labelText: "Email",
                ),
              ),
              TextFormField(
                decoration:InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: "Password",
                ) ,
              ),
              Container(
                width: 80,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formkey.currentState!.validate()){

                      }
                    },
                  child:Text("Submit"),

                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
