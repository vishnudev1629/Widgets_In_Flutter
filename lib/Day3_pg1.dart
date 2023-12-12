import 'package:flutter/material.dart';
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Container(
          width: 400,
          height: 300,
          child: Image.asset('assets/image/messi.jpg'),
        ),
      ),
    );
  }
}
