import 'dart:async';
import 'package:coreconnect/screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 1), (){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder: (context) => LoginPage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(child: Text('COERConnect', style: TextStyle(
          fontSize: 34,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),)),
      ),
    );
  }
}
