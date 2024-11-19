import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Calculator App",
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: CalculatorPage (),
    );
  }
}

