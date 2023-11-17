import 'dart:async';

import 'package:bmi/bmi%20screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState()  {
    // TODO: implement initStat
    super.initState();
    Timer(
        const Duration(seconds: 10),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => FirstPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        decoration: BoxDecoration(
            color: Colors.pinkAccent,
          image: DecorationImage(image: AssetImage('Image/binky.jpg'))
        ),
      ),);
  }

}
