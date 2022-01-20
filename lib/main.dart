import 'package:flutter/material.dart';
import 'package:bmicalculator/Screens/home.dart';

import 'package:bmicalculator/Screens/splashScreen.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI CALCULATOR",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ScreenSplash(),
    );
  }
}

