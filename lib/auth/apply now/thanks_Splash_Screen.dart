// ignore_for_file: file_names

import 'dart:async' show Timer;

import 'package:dotted_border/dotted_border.dart';
import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/apply%20now/paid%20apply/apply_paid_email.dart';
import 'package:evs_app/screens/contact_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'apply free/apply_free_email.dart';

// ignore: camel_case_types, must_be_immutable
class Thanks_Screen extends StatelessWidget {
  bool isChecking;
  Thanks_Screen({Key? key, required this.isChecking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isChecking == false
        ? const Free_Thanks_Screen()
        : const Paid_Thanks_Screen();
  }
}

// ignore: camel_case_types
class Free_Thanks_Screen extends StatefulWidget {
  const Free_Thanks_Screen({Key? key}) : super(key: key);

  @override
  _Free_Thanks_ScreenState createState() => _Free_Thanks_ScreenState();
}

// ignore: camel_case_types
class _Free_Thanks_ScreenState extends State<Free_Thanks_Screen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const Free_Apply_Email());
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
                      children: [
                        const SizedBox(
                          height: 300,
                          width: 300,
                          child: Image(
                            image: AssetImage('images/emote.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: Divider(
                                color: Colors.white,
                                thickness: 1,
                                indent: 30,
                                endIndent: 30,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: Text(
                                'THANK',
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: color1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 40.0),
                              child: Text(
                                'YOU',
                                style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: color1),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40.0, right: 25),
                              child: Text(
                                'For submitting an application for free access option to enabling video series',
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w300,
                                    color: color1),
                              ),
                            ),
                            Divider(
                              color: gradiant1,
                              thickness: 1,
                              indent: 70,
                              endIndent: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, left: 40.0, right: 20),
                              child: DottedBorder(
                                color: gradiant1,
                                dashPattern: const [6, 6, 6, 6],
                                strokeWidth: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'an auto-generated email is sent to you, please check your inbox or spam folder of your email account',
                                    style: TextStyle(color: color1),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: value2,
                        ),
                        const SpinKitSpinningLines(
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                )))));
  }
}

// ignore: camel_case_types
class Paid_Thanks_Screen extends StatefulWidget {
  const Paid_Thanks_Screen({Key? key}) : super(key: key);

  @override
  _Paid_Thanks_ScreenState createState() => _Paid_Thanks_ScreenState();
}

// ignore: camel_case_types
class _Paid_Thanks_ScreenState extends State<Paid_Thanks_Screen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.to(() => const Paid_Apply_Email());
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
                    children: [
                      const SizedBox(
                        height: 280,
                        width: 300,
                        child: Image(
                          image: AssetImage('images/emote.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10.0),
                            child: Divider(
                              color: Colors.white,
                              thickness: 1,
                              indent: 30,
                              endIndent: 30,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: Text(
                              'THANK',
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: color1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              'YOU',
                              style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: color1),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 25),
                            child: Column(
                              children: [
                                Text(
                                  'For signing up on Enablers Training',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: color1),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Program-',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: color1),
                                    ),
                                    Text(
                                      'ENABLING VIDEO SERIES',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: color1),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: gradiant1,
                                  indent: 60,
                                  endIndent: 60,
                                  thickness: .5,
                                ),
                                Text(
                                  'Bank account detials has been sent to your registered email address. Please follow the instructions',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: color1),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: value3,
                                ),
                                Text(
                                  'Your registration number is',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                      color: color1),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 40.0, right: 20),
                            child: DottedBorder(
                              color: gradiant1,
                              dashPattern: const [6, 6, 6, 6],
                              strokeWidth: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0,
                                    left: 30.0,
                                    right: 30.0,
                                    bottom: 10),
                                child: Text(
                                  'EVS-02-22-40829',
                                  style: TextStyle(
                                      color: color1,
                                      fontSize: 25,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: value1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 40.0, right: 20),
                            child: Text(
                              "Note if you don't find email in your inbox, check yoour spam or junk folder or you can rise the concern through",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: color1),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(
                            height: value1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Get.to(() => const Contact_Support());
                                  },
                                  child: Text(
                                    'Support',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: color1,
                                        decoration: TextDecoration.underline),
                                  )),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Icon(
                                      FontAwesomeIcons.solidQuestionCircle,
                                      size: 17,
                                      color: color1,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ))))));
  }
}
