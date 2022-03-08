import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/apply%20now/apply.dart';
import 'package:evs_app/screens/dashboard.dart';
import 'package:evs_app/screens/splashscreens/splash_screen.dart';
import 'package:evs_app/screens/splashscreens/splash_screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

// ignore: camel_case_types
class _Login_ScreenState extends State<Login_Screen> {
  final TextEditingController _useremail = TextEditingController();
  final TextEditingController _userPassword = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isLoading = true;
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
                  actions: [
                    TextButton(
                        onPressed: () {
                          Get.to(() => const Apply_Now());
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(color: color1),
                        ))
                  ],
                ),
                body: SingleChildScrollView(
                  child: Center(
                      child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 30, right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: color1),
                        ),
                        const SizedBox(
                          height: value2,
                        ),
                        Text(
                          'Enter your gmail and password so you can login into your account',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: color1),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: value2,
                        ),
                        Form(
                          key: formkey,
                          child: Stack(
                            children: [
                              Container(
                                height: 250,
                                width: 350,
                                decoration: BoxDecoration(color: color1),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 40.0, left: 20, right: 20),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 290,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: TextFormField(
                                            style: TextStyle(color: color2),
                                            cursorColor: color2,
                                            controller: _useremail,
                                            decoration: InputDecoration(
                                                hintText:
                                                    'Enter your username... ',
                                                hintStyle:
                                                    TextStyle(color: color2),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: color2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30)),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: color2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30)),
                                                suffixIcon:
                                                    const Icon(Icons.person)),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "* Required";
                                              } else {
                                                return null;
                                              }
                                            }),
                                      ),
                                      const SizedBox(
                                        height: value1,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 300,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: TextFormField(
                                            style: TextStyle(color: color2),
                                            // controller: _userNameController,
                                            cursorColor: Colors.grey,
                                            controller: _userPassword,
                                            obscureText: hidePassword,
                                            decoration: InputDecoration(
                                              hintText: 'Enter your password ',
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: color2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              border: OutlineInputBorder(
                                                  borderSide:
                                                      BorderSide(color: color2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              suffixIcon: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      hidePassword =
                                                          !hidePassword;
                                                    });
                                                  },
                                                  icon: Icon(hidePassword
                                                      ? Icons.visibility_off
                                                      : Icons.visibility)),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return "* Required";
                                              } else {
                                                return null;
                                              }
                                            }),
                                      ),
                                      const SizedBox(
                                        height: value3,
                                      ),
                                      Text(
                                        "By pressing 'submit' you agree to our ",
                                        style: TextStyle(
                                            color: Colors.grey.shade500),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          child:
                                              const Text('terms & conditions',
                                                  style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ))),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 230.0),
                                  child: SizedBox(
                                    height: 50,
                                    width: 130,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        setState(() {
                                          isLoading = false;
                                        });
                                        if (!formkey.currentState!.validate()) {
                                          return;
                                        }
                                        Logindata();
                                      },
                                      child: Text(
                                        'LOGIN',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            color: color1),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  gradiant1),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                ))));
  }

  // ignore: non_constant_identifier_names
  Future Logindata() async {
    var apiUrl = "https://api.enablerspk.com/EVS/StudentLogin";
    Dio dio = Dio();

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    final response = await dio.post(
      apiUrl,
      data: ({
        "EmailAddress": _useremail.text,
        'Password': _userPassword.text,
      }),
    );
    debugPrint('Request Served');
    debugPrint(
        'Status Code --- > ${response.statusCode} : \nBody ----> ${response.data}');
    debugPrint('Without Decode ---> ${response.data[0]['Id']}');
    // ignore: unrelated_type_equality_checks
    if (response.data[0]['Id'] != null) {
      Get.offAll(() => SplashScreen2());

      setState(() {
        isLoading = false;
      });
      setState(() {
        isLoading = true;
      });
    } else {
      showDialog(
        context: context,
        builder: (ctx) => const AlertDialog(
          title: Text('hello word'),
          content: Text(
            'User Not Found',
          ),
        ),
      );
    }
  }
}
