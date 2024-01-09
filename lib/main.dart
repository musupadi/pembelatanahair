import 'package:flutter/material.dart';

import 'Home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pembela Tanah Air',
      theme: ThemeData(fontFamily: 'Gotham'),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
