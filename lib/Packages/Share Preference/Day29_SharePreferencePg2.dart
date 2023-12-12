
import 'package:flutter/material.dart';
import 'package:new_project/Packages/Share%20Preference/Day29_Sharepreferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyDashBoard extends StatefulWidget {
  const MyDashBoard({Key? key}) : super(key: key);

  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  late SharedPreferences logindata;
  late String username;
  late String password;
  late String email;

  @override
  void initState() {
    userName();
    passWord();
    emailDetail();
    // TODO: implement initState
    super.initState();
  }

  void userName() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString("username")!;
    });
  }

  void passWord() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      password = logindata.getString("password")!;
    });
  }

  void emailDetail() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      email = logindata.getString("email")!;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("MydashBoard",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          bottom: PreferredSize(
            preferredSize: Size(100, 50),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder()),
              ),
            ),
          )),
      body: Center(
          child: ElevatedButton(onPressed: () {
            return showAlertDialog(context);
          }, child: Text("View"))
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("User Info"),
        content: Column(
          children: [
            Text("$username",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
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
                MaterialPageRoute(builder: (context) => LginPageDemo()));
          }, child: Text("Log out"))),
        ],
      );
    });
  }
}
// ElevatedButton(
// onPressed: () {
// logindata.setBool("login", true);
// Navigator.pushReplacement(context,
// MaterialPageRoute(builder: (context) => LginPageDemo()));
// },
// child: Text("click",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold)))
// ],
