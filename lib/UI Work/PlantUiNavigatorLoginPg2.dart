import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class NavigatorPage2 extends StatefulWidget {
  const NavigatorPage2({super.key});

  @override
  State<NavigatorPage2> createState() => _NavigatorPage2State();
}

class _NavigatorPage2State extends State<NavigatorPage2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
        children:[
        Image.asset("assets/image/logoimg1.png",
        width: 200,
        height: 150,),
    Image.asset("assets/image/logoimg2.png",
    width: 300,
    height: 180,),
          Text("Verification",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
          Text("Enter OTP code sent to your number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
          OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFFDDEED4),
            showFieldAsBox: true,
            onCodeChanged:(String code) {
            },
            onSubmit: (String verificationCode){
            },
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF4F7B39),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Center(
                child: TextButton(onPressed: (){},
                    child: Text("Submit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white))),
              ),
            ),
          ),
          ]
        ),
    ),
    );
  }
}
