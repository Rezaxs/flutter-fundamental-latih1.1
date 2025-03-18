import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Image Widget")),
      body: const Center(
        child: Image(
          image: AssetImage("assets/logo.png"),
        ),
      ),
    );
  }
}


