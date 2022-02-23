import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/apply%20now/paid%20apply/attach_reciept.dart';
import 'package:evs_app/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Paid_Apply_Email extends StatefulWidget {
  const Paid_Apply_Email({Key? key}) : super(key: key);

  @override
  _Paid_Apply_EmailState createState() => _Paid_Apply_EmailState();
}

// ignore: camel_case_types
class _Paid_Apply_EmailState extends State<Paid_Apply_Email> {
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
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                    height: 80,
                    width: 80,
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
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: color1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4.0),
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
                const SizedBox(
                  height: 100,
                ),
                Column(
                  children: [
                    Text(
                      'Check For',
                      style: TextStyle(color: color1, fontSize: 35),
                    ),
                    Text(
                      'Enrollmemt',
                      style: TextStyle(color: color1, fontSize: 50),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value1,
                ),
                Container(
                  height: 170,
                  width: 300,
                  decoration: BoxDecoration(color: color1),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 30.0,
                      left: 20.0,
                      right: 20.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 290,
                          decoration: const BoxDecoration(),
                          child: TextFormField(
                              style: const TextStyle(color: Colors.grey),
                              cursorColor: Colors.grey,
                              decoration: const InputDecoration(
                                hintText: 'Enter your registration number... ',
                                hintStyle: TextStyle(color: Colors.grey),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
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
                          height: value1,
                        ),
                        SizedBox(
                          height: 50,
                          width: 130,
                          child: ElevatedButton(
                            onPressed: () {
                              Get.to(() => const Attch_Reciept());
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
                                    MaterialStateProperty.all(gradiant1),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ))),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
