import 'dart:async';

import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../../auth/form.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.off(() => const Dashboard_Screen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.2, 0.6, 0.8],
                colors: [gradiant1, gradiant3, gradiant2])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Please wait...",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, color: color1),
              ),
              const SizedBox(height: value1),
              const SizedBox(
                height: value2,
              ),
              const SpinKitSpinningLines(
                color: Colors.white,
                size: 50,
              )
            ],
          )),
        ),
      ),
    );
  }
}
