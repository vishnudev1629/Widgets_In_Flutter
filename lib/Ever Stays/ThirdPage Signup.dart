import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/FourthPage%20Signup2.dart';
import 'package:new_project/Ever%20Stays/Home_Page.dart';
import 'package:new_project/Ever%20Stays/profile_page_shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SignupFirstScreen extends StatefulWidget {
  const SignupFirstScreen({super.key});

  @override
  State<SignupFirstScreen> createState() => _SignupFirstScreenState();
}

class _SignupFirstScreenState extends State<SignupFirstScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController =TextEditingController();

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
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    numberController.dispose();
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
              width: 300,
              height: 350,),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.keyboard),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Name"

                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon:Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Email Id"

                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: numberController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.redAccent,
                      ),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    hintText: "Phone Number"
                ),
              ),
            ),
            // Expanded(
            //   child: Row(
            //     children: [
            //       TextFormField(
            //         decoration: InputDecoration(
            //             enabledBorder: OutlineInputBorder(
            //               borderSide: BorderSide(width:2,color: Colors.redAccent,
            //               ),
            //               borderRadius: BorderRadius.circular(35),
            //             ),
            //             hintText: "Gender"
            //         ),
            //       ),
            //       TextFormField(
            //         decoration: InputDecoration(
            //             enabledBorder: OutlineInputBorder(
            //               borderSide: BorderSide(width:2,color: Colors.redAccent,
            //               ),
            //               borderRadius: BorderRadius.circular(35),
            //             ),
            //             hintText: "Age"
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                  String name = nameController.text;
                  String email = emailController.text;
                  String number = numberController.text;
                  if (name!= " " && email!= " " && number!=" " )
                  {
                    print("successfull");
                    loginData.setBool("login",false);
                    loginData.setString("name", nameController.text);
                    loginData.setString("email",emailController.text);
                    loginData.setString("number", numberController.text);


                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>SignupSecondScreen()));
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
