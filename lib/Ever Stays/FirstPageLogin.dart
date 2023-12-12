import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/Home_Page.dart';
import 'package:new_project/Ever%20Stays/SecondPageLoginOTP.dart';
import 'package:new_project/Ever%20Stays/ThirdPage%20Signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginFirstScreen extends StatefulWidget {
  const LoginFirstScreen({super.key});
  @override
  State<LoginFirstScreen> createState() => _LoginFirstScreenState();
}
class _LoginFirstScreenState extends State<LoginFirstScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
    if(newUser==false)
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>EvarStayHomepg()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
                child:Padding(
                  padding: const EdgeInsets.only(top: 105.0),
                  child: Image.asset("assets/image/Hotellogin.webp",
                    width: 300,
                    height: 240,),
                )
            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: usernameController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.edit),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Username"
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
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,

                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Password"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200.0),
              child: Text("Forgot Password?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 10,
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
                  String username = usernameController.text;
                  String password = passwordController.text;
                  if (username != " "&& password != " ")
                  {
                    print("successfull");
                    loginData.setBool("login",false);
                    loginData.setString("username", usernameController.text);
                    loginData.setString("password",passwordController.text);


                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>LoginSecondScreen()));
                  }
                },
                    child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Row(
                children: [
                  Text("Don’t have an account ? ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=>SignupFirstScreen()));
                  },
                      child: Text("Sign UP",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            //Text("or",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.only(left: 130.0),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image/googleimg.png"),
                        )
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/image/facebook.png"),
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/image/Instagram.jpg"),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
