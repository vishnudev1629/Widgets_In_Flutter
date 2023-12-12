
import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/Home_Page.dart';
import 'package:new_project/Ever%20Stays/SecondPageLoginOTP.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SignupSecondScreen extends StatefulWidget {
  const SignupSecondScreen({super.key});

  @override
  State<SignupSecondScreen> createState() => _SignupSecondScreenState();
}
class _SignupSecondScreenState extends State<SignupSecondScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmController =TextEditingController();

  late SharedPreferences loginData;
  late bool newUser;

  @override
  void initState() {
    check_if_alretady_login();
    // TODO: implement initState
    super.initState();
  }
  void check_if_alretady_login() async
  {
    loginData = await SharedPreferences.getInstance();
    newUser = (loginData.getBool("login")??true);
    print(newUser);
    if(newUser==true)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginSecondScreen()));
    }
  }
  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    // TODO: implement dispose
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children:[
            Image.asset("assets/image/Hotellogin.webp",
              width: 200,
              height: 150,),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Enter Username"

                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Enter Password"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller:confirmController ,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Confirm Password"
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF083663),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: TextButton(onPressed: (){
                  String username = nameController.text;
                  String password = passwordController.text;
                  String confirm = confirmController.text;
                  if (username!= " " && password!=" " && confirm!=" ")
                  {
                    print("successfull");
                    loginData.setBool("login",false);
                    loginData.setString("username", nameController.text);
                    loginData.setString("password",passwordController.text);
                    loginData.setString("confirm", confirmController.text);


                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginSecondScreen()));
                  }

                },
                    child: Text("Next",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
