import 'package:evs_app/Models/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../Models/drawer.dart';

// ignore: camel_case_types
class Contact_Support extends StatelessWidget {
  const Contact_Support({Key? key}) : super(key: key);

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
                  title: Text(
                    'Contact Support',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: color1),
                  ),
                  elevation: 0,
                  centerTitle: true,
                ),
                drawer: const Drawer_Menu(),
                // body: _isLoading
                //     ? const SpinKitSpinningLines(
                //         color: Color(0xfff05c2f),
                //         size: 40.0,
                //       )
                //     :
                body: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          color: color1,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Text(
                                  "Please fill up the below form to submit your compaints",
                                  style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: gradiant1),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: value2,
                                ),
                                Container(
                                  height: 50,
                                  width: 290,
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      cursorColor: Colors.grey,
                                      decoration: const InputDecoration(
                                        hintText: 'Full Name',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
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
                                  height: value2,
                                ),
                                Container(
                                  height: 50,
                                  width: 290,
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      cursorColor: Colors.grey,
                                      decoration: const InputDecoration(
                                        hintText: 'Email',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
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
                                  height: value2,
                                ),
                                Container(
                                  height: 50,
                                  width: 290,
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      cursorColor: Colors.grey,
                                      decoration: const InputDecoration(
                                        hintText: 'Interested in',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
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
                                  height: value2,
                                ),
                                Container(
                                  height: 50,
                                  width: 290,
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      cursorColor: Colors.grey,
                                      decoration: const InputDecoration(
                                        hintText: 'Phone/ Whats app Number',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
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
                                  height: value2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 135,
                                      decoration: const BoxDecoration(),
                                      child: TextFormField(
                                          style: const TextStyle(
                                              color: Colors.grey),
                                          cursorColor: Colors.grey,
                                          decoration: const InputDecoration(
                                            hintText: 'Requested for',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "* Required";
                                            } else {
                                              return null;
                                            }
                                          }),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 135,
                                      decoration: const BoxDecoration(),
                                      child: TextFormField(
                                          style: const TextStyle(
                                              color: Colors.grey),
                                          cursorColor: Colors.grey,
                                          decoration: const InputDecoration(
                                            hintText: 'Date of apply',
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey)),
                                          ),
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return "* Required";
                                            } else {
                                              return null;
                                            }
                                          }),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: value2,
                                ),
                                Container(
                                  height: 120,
                                  width: 290,
                                  decoration: const BoxDecoration(),
                                  child: TextFormField(
                                      style:
                                          const TextStyle(color: Colors.grey),
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.multiline,
                                      maxLines: 10,
                                      decoration: const InputDecoration(
                                        hintText: 'Comments / Queries ',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
                                        border: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey)),
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
                                  height: value2,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 120,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Get.to(() => const Dashboard_Screen());
                                    },
                                    child: Text(
                                      'Submit',
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
                                              BorderRadius.circular(0.0),
                                        ))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
