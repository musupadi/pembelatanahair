import 'package:flutter/material.dart';

import 'Home/MobileHome.dart';
import 'Web/WebHome.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 720 ? MobileHome() : WebHome();
    // return WebHome();
  }
}