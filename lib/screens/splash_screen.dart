import 'dart:async';

import 'package:evs_app/Models/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../auth/form.dart';

// ignore: camel_case_types
class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

// ignore: camel_case_types
class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const Form_Menu());
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
                "WELCOME",
                style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: color1),
              ),
              const SizedBox(height: value1),
              Text(
                "TO",
                style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold, color: color1),
              ),
              const SizedBox(height: value2),
              const SizedBox(
                  height: 120,
                  width: 120,
                  child: Image(
                    image: AssetImage('images/enablers-logo.1.png'),
                    fit: BoxFit.cover,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "enablers",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: color1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      ".ORG",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: color1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: value1),
              Text(
                "VIDEO SERIES",
                style: TextStyle(
                    fontSize: 27, fontWeight: FontWeight.bold, color: color1),
              ),
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
