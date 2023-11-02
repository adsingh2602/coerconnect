
import 'package:coreconnect/screens/Faculty/faculty.dart';
import 'package:coreconnect/screens/login.dart';
import 'package:coreconnect/Student/students.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Management App',
      home: LoginPage(),
      
      debugShowCheckedModeBanner: false,
    );
  }
}
