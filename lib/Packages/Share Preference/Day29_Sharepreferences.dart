import 'package:flutter/material.dart';
import 'package:new_project/Packages/Share%20Preference/Day29_SharePreferencePg2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LginPageDemo extends StatefulWidget {
  const LginPageDemo({Key? key}) : super(key: key);

  @override
  _LginPageDemoState createState() => _LginPageDemoState();
}

class _LginPageDemoState extends State<LginPageDemo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController =TextEditingController();


  late SharedPreferences loginData;
  late bool newUser;

  @override
  void initState() {
    check_if_already_login();
    // TODO: implement initState
    super.initState();
  }

  void check_if_already_login() async
  {
    loginData = await SharedPreferences.getInstance();
    newUser = (loginData.getBool("login")??true);
    print(newUser);
    if(newUser==false)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyDashBoard()));

    }
  }
  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preference',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "username",
                  border: OutlineInputBorder(

                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: "email",
                  border: OutlineInputBorder(
                  )
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                  )
              ),
            ),
          ),
          ElevatedButton(
              onPressed: (){
                String username = nameController.text;
                String password = passwordController.text;
                String email = emailController.text;
                if (username!= " " && password!= ""&&email!="")
                {
                  print("successfull");
                  loginData.setBool("login",false);
                  loginData.setString("username", nameController.text);
                  loginData.setString("password",passwordController.text);
                  loginData.setString("email", emailController.text);


                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>MyDashBoard()));
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}

