import 'dart:async';

import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Payment_Proof_Splash extends StatefulWidget {
  const Payment_Proof_Splash({Key? key}) : super(key: key);

  @override
  _Payment_Proof_SplashState createState() => _Payment_Proof_SplashState();
}

// ignore: camel_case_types
class _Payment_Proof_SplashState extends State<Payment_Proof_Splash> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const Login_Screen());
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
                appBar: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                body: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              FontAwesomeIcons.checkCircle,
                              size: 150,
                              color: Color.fromARGB(255, 7, 255, 15),
                            ),
                            const SizedBox(
                              height: value2,
                            ),
                            Text(
                              'Payment Proof\nsubmitted\nsuccessfully',
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: color1),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: value2,
                            ),
                            Text(
                              'After verifying your provided payment proof',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: color1),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: value2,
                            ),
                            const Text(
                              'You will get a confimatory email with in 1 working day',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.orange),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: value2,
                            ),
                            const SpinKitSpinningLines(
                              color: Colors.white,
                              size: 50,
                            )
                          ]),
                    ),
                  ),
                ))));
  }
}
