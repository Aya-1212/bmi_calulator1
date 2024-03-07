// ignore_for_file: prefer_const_constructors

import 'package:bmi_calulator1/home_page.dart';

import 'package:flutter/material.dart';

void main(List<String> args) {
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(debugShowCheckedModeBanner: false ,
  home:MyFirstScreen());
  }

}
