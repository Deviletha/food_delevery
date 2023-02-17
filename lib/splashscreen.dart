import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(
    home: Splash_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class Splash_screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => App()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("Assets/images/donut.png"),
                SizedBox(
                  height: 20,
                ),
                Text("Food Delivery",style: TextStyle(fontSize: 50,color: Colors.pink,fontWeight: FontWeight.bold,fontFamily: AutofillHints.familyName),)
              ],
            )),
      ),
    );
  }
}