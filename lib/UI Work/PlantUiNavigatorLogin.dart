import 'package:flutter/material.dart';
import 'package:new_project/UI%20Work/PlantUiNavigatorLoginPg2.dart';
import 'package:new_project/UI%20Work/PlantUiNavigatorSignupPage.dart';
class NavigatorDemo extends StatefulWidget {
  const NavigatorDemo({super.key});

  @override
  State<NavigatorDemo> createState() => _NavigatorDemoState();
}

class _NavigatorDemoState extends State<NavigatorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
              child:Stack(
            children: [
          Padding(
            padding: const EdgeInsets.only(top: 105.0),
            child: Image.asset("assets/image/logoimg2.png",
            width: 300,
            height: 240,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Image.asset("assets/image/logoimg1.png",
              width: 200,
              height: 230,),
          )
          ],
        )

            ),

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width:2,color: Colors.green,
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
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width:2,color: Colors.green,
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
                color: Color(0xFF4F7B39),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                           builder: (context)=> NavigatorPage2()));
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
                        builder: (context)=>NavigatorSignupPage()));
                  },
                      child: Text("Sign UP",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)))
                ],
              ),
            ),
            Text("or",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
