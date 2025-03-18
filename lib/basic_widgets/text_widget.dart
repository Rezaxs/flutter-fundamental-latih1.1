import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text Widget")),
      body: const Center(
        child: Text(
          "Nama saya Reza Prasasti, sedang belajar Pemrograman Mobile",
          style: TextStyle(color: Colors.red, fontSize: 14),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


