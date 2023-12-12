import 'package:flutter/material.dart';
import 'package:new_project/Packages/Share%20Preference/Share%20_preference_2/Dashboard.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageScreenDemo extends StatefulWidget {
  const LoginPageScreenDemo({Key? key}) : super(key: key);

  @override
  _LoginPageScreenDemoState createState() => _LoginPageScreenDemoState();
}

class _LoginPageScreenDemoState extends State<LoginPageScreenDemo> {
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
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>DashBoardDemo()));

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
         // /
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
               // String username = usernameController.text;
                String password = passwordController.text;
                String email = emailController.text;
                if ( password!= ""&&email!="")
                {
                  print("successfull");
                  loginData.setBool("login",false);
                  //loginData.setString("username", usernameController.text);
                  loginData.setString("password",passwordController.text);
                  loginData.setString("email", emailController.text);


                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>DashBoardDemo()));
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}

