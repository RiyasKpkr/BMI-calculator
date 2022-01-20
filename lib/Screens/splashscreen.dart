import 'dart:async';

import 'package:bmicalculator/Screens/home.dart';
import 'package:flutter/material.dart';


class ScreenSplash extends StatefulWidget {
  const ScreenSplash({ Key? key }) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {

  @override
  void initState() {
    gotoHome();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/[Downloader.la]-61e3ff53c368e.jpg'),
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }


  Future <void> gotoHome() async{
    Future.delayed(Duration(seconds: 5));
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>HomeScreen()));
  }
 
}
