import 'package:flutter/material.dart';
class AlertDialogDemo extends StatefulWidget {
  const AlertDialogDemo({super.key});

  @override
  State<AlertDialogDemo> createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {
                return showAlertDialog(context);
                },
                  child: Text("Sumbit")),
                TextButton(onPressed: (){
                  return showAlertTextFiledDialod(context);
                },
                    child: Text("Ok")),

                TextButton(onPressed: (){
                 return showAlertSelectDialog(context);
                },
                    child: Text("Show")),
              ],
            ),
        ),
      );

  }
}
showAlertDialog(BuildContext context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("Alert"),
      content: Text("!!!"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("Cancel")),
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("ok")),
      ],
    );
  });
}
showAlertTextFiledDialod(BuildContext context){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text("Alert"),
      content: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Name",
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("Cancel")),
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("ok")),
      ],
    );
  });
}
enum Product { Apple, Samsung, Oppo, Redmi }
showAlertSelectDialog(BuildContext context){
  showDialog(
    context: context,builder:(BuildContext context) {return SimpleDialog(
    title:Text("Select"),
    children: [
    SimpleDialogOption(
    onPressed: (){
    Navigator.pop(context,Product.Apple);
    },
    child: Text("Apple"),
    ),
    SimpleDialogOption(
    onPressed: (){
    Navigator.pop(context,Product.Samsung);
    },
    child: Text("Samsung"),
    ), SimpleDialogOption(
    onPressed: (){
    Navigator.pop(context,Product.Oppo);
    },
    child: Text("Oppo"),
    ), SimpleDialogOption(
    onPressed: (){
    Navigator.pop(context,Product.Redmi);
    },
    child: Text("Redmi"),
    ),
    ],
    );
  });
}
