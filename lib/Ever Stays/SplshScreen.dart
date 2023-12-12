import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_project/Ever%20Stays/FirstPageLogin.dart';
class LoginPageProjct1 extends StatefulWidget {
  @override
  _LoginPageProjct1State createState() => _LoginPageProjct1State();
}
class _LoginPageProjct1State extends State<LoginPageProjct1> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    LoginFirstScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/image/Hotellogin.webp")
          )
        ),
    );
  }
}

