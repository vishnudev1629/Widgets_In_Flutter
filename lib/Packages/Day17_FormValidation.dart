import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';
class FormValidationDemo extends StatefulWidget {
  const FormValidationDemo({super.key});

  @override
  State<FormValidationDemo> createState() => _FormValidationDemoState();
}

class _FormValidationDemoState extends State<FormValidationDemo> {
  @override

  final formkey=GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'USER NAME',
            ),
            validator: (value) {
              final validator = Validator(
                validators: [RequiredValidator()],
              );

              return validator.validate(
                label: 'Required',
                value: value,
              );
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
            validator: (value) {
              final validator = Validator(
                validators: [
                  RequiredValidator(),
                  EmailValidator(),
                ],
              );

              return validator.validate(
                label: 'Email',
                value: value,
              );
            },
          ),
          SizedBox(
            height: 16.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'PASSWORD',
            ),
            validator: (value) {
              final validator = Validator(
                validators: [
                  MaxLengthValidator(length: 5),
                  MinLengthValidator(length: 3),
                ],
              );

              return validator.validate(
                label: 'Min 3 / Max 5 Length',
                value: value,
              );
            },
          ),
          Container(
            width: 100,
            child: ElevatedButton(
                onPressed: (){
                  if(formkey.currentState!.validate()){


                  }
            },
                child: Text("Sumbit"),
            ),
          ),
        ],
      ),
    );
  }
}
