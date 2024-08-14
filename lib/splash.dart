import 'dart:async';
import 'package:dgx/main.dart';
import 'package:dgx/viewhome/pagesview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Pageview()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: height*0.3,
          width: width *0.3,
          child: Image.asset(
            'assets/images/dgxxx.png',
            // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
