import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/profile_page_shared_preference.dart';
import 'package:new_project/Packages/Share%20Preference/Share%20_preference_2/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';
class DashBoardDemo extends StatefulWidget {
  const DashBoardDemo({super.key});

  @override
  State<DashBoardDemo> createState() => _DashBoardDemoState();
}

class _DashBoardDemoState extends State<DashBoardDemo> {
  late SharedPreferences logindata;

  // String ?username;
  late String password;
  late String email;

  @override
  void initState() {
    // userName();
    PasswordBuilder();
    // emailDetail();
    // TODO: implement initState
    super.initState();
  }

  // void userName() async {
  //   logindata = await SharedPreferences.getInstance();
  //   setState(() {
  //     username = logindata.getString("username")!;
  //   });
  // }
  void PasswordBuilder() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      password = logindata.getString("password")!;
      email = logindata.getString("email")!;
    });
  }

  // void emailDetail()async{
  //   logindata=await SharedPreferences.getInstance();
  //   setState(() {
  //     email=logindata.getString("email")!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          return showAlertDialog(context);
        },
            child: Text("View")),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("User Info"),
        content: Column(
          children: [
            // Text("$username",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
            Text("$password",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
            Text("$email",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          TextButton(onPressed: () {
            Navigator.of(context).pop();
          }, child: TextButton(onPressed: () {
            logindata.setBool("login", true);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => LoginPageScreenDemo()));
          }, child: Text("Log out"))),
        ],
      );
    });
  }
}