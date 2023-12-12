import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:new_project/Ever%20Stays/5thPage_Location.dart';
class LoginSecondScreen extends StatefulWidget {
  const LoginSecondScreen({super.key});

  @override
  State<LoginSecondScreen> createState() => _LoginSecondScreenState();
}

class _LoginSecondScreenState extends State<LoginSecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children:[
              Image.asset("assets/image/Hotelimg.png",
                width: 500,
                height: 500,),

              Text("Verification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              Text("Enter OTP code sent to your number",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              OtpTextField(
                numberOfFields: 4,
                borderColor: Color(0xFF083663),
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
                    color: Color(0xFF083663),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Center(
                    child: TextButton(onPressed: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context)=> LocationScreen()));
                    },
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
