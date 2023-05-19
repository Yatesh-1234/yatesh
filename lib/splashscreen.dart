import 'dart:async';
import 'package:chatapplication/signin.dart';
import 'package:chatapplication/textcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () => Get.to(SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            child: TextCard(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontsize: 50,
              data: 'Hell',
            ),
          ),
        ),
      ),
    );
  }
}
