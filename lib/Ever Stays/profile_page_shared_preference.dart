
import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/FirstPageLogin.dart';
import 'package:new_project/Ever%20Stays/SplshScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});



  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
late SharedPreferences logindata;
late String username;
late String password;
late String confirm;
late String name;
late String email;
late String number;


class _ProfilePageState extends State<ProfilePage> {

  @override
  void initState() {
    userName();
    passWord();
    ConfrimpassWord();
    Name();
    Email();
    Number();
    // TODO: implement initState
    super.initState();
  }
  void Name() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString("name")!;
    });
  }
  void Email() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString("email")!;
    });
  }
  void Number() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      number = logindata.getString("number")!;
    });
  }
  void userName() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString("username")!;
    });
  }

  void passWord()async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      password=logindata.getString("password")!;
    });
  }
  void ConfrimpassWord()async{
    logindata=await SharedPreferences.getInstance();
    setState(() {
      confirm=logindata.getString("confirm")!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
              child: ListTile(
          trailing: Icon(Icons.edit),
                title: Text("User ID"),
                subtitle: Text("$username",style: TextStyle(fontSize: 15,
                color: Colors.black),),
                )),
          Card(
              child: ListTile(
                trailing: Icon(Icons.edit),
                title: Text("Password"),
                subtitle: Text("$password",style: TextStyle(fontSize: 15,
                    color: Colors.black),),
              )),
          Card(
              child: ListTile(
                trailing: Icon(Icons.edit),
                title: Text("Name"),
                subtitle: Text("$name",style: TextStyle(fontSize: 15,
                    color: Colors.black),),
              )),
          Card(
              child: ListTile(
                trailing: Icon(Icons.edit),
                title: Text("Email"),
                subtitle: Text("$email",style: TextStyle(fontSize: 15,
                    color: Colors.black),),
              )),
          Card(
            color: Colors.blueGrey,
              child: ListTile(
                trailing: Icon(Icons.edit),
                title: Text("Contact Number"),
                subtitle: Text("$number",style: TextStyle(fontSize: 15,
                    color: Colors.black),),
              )),

         // Text("$passkeyword",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
         // Text("$username",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //Text("$password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //Text("$confirm",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
         // Text("$name",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //Text("$email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          //Text("$number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)),
          Container(
            width: 140,
            height: 50,
            color: Color(0xFF083663),
            child: TextButton(
                onPressed: () {
                  logindata.setBool("login", true);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPageProjct1()));
                },
                child: Row(
                  children: [
                    Text("Log out",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.red)),
                    Icon(Icons.logout,color: Colors.red,),
                  ],
                )),
          )
        ],
      ),

    );
  }
}
