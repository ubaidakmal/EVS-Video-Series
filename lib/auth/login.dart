import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/apply%20now/apply.dart';
import 'package:evs_app/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Login_Screen extends StatefulWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  _Login_ScreenState createState() => _Login_ScreenState();
}

// ignore: camel_case_types
class _Login_ScreenState extends State<Login_Screen> {
  bool hidePassword = true;
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
                        Stack(
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
                                          style: const TextStyle(
                                              color: Colors.grey),
                                          cursorColor: Colors.grey,
                                          decoration: InputDecoration(
                                              hintText:
                                                  'Enter your username... ',
                                              hintStyle: const TextStyle(
                                                  color: Colors.grey),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
                                              border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
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
                                          style: TextStyle(color: color1),
                                          // controller: _userNameController,
                                          cursorColor: Colors.grey,
                                          obscureText: hidePassword,
                                          decoration: InputDecoration(
                                            hintText: 'Enter your password ',
                                            focusedBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: color1),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            border: OutlineInputBorder(
                                                borderSide: const BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(30)),
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
                                        child: const Text('terms & conditions',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
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
                                    onPressed: () {
                                      Get.to(() => const Dashboard_Screen());
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
                        )
                      ],
                    ),
                  )),
                ))));
  }
}
