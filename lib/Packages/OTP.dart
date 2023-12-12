import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
class OtpDemo extends StatefulWidget {
  const OtpDemo({super.key});

  @override
  State<OtpDemo> createState() => _OtpDemoState();
}

class _OtpDemoState extends State<OtpDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:OtpTextField(
        numberOfFields: 5,
        borderColor: Color(0xFF512DA8),
        showFieldAsBox: true,
        onCodeChanged: (String code) {
        },
        onSubmit: (String verificationCode){
          showDialog(
              context: context,
              builder: (context){
                return AlertDialog(
                  title: Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              }
          );
        }, // end onSubmit
      ),
    );
  }
}
