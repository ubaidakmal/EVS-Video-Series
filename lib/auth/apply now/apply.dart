import 'package:evs_app/auth/apply%20now/apply%20free/free_apply.dart';
import 'package:evs_app/auth/apply%20now/paid%20apply/paid_apply.dart';
import 'package:evs_app/screens/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Models/colors.dart';

// ignore: camel_case_types
class Apply_Now extends StatefulWidget {
  const Apply_Now({Key? key}) : super(key: key);

  @override
  _Apply_NowState createState() => _Apply_NowState();
}

// ignore: camel_case_types
class _Apply_NowState extends State<Apply_Now> {
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
              body: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Box1(),
                      const SizedBox(
                        height: value1,
                      ),
                      Box2(),
                      const SizedBox(
                        height: value1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {
                                Get.to(() => const Contact_us());
                              },
                              child: Text(
                                'Need Help',
                                style: TextStyle(
                                    fontSize: 17,
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
                ),
              ),
            )));
  }

  // ignore: non_constant_identifier_names
  Container Box1() {
    return Container(
      height: 300,
      width: 300,
      decoration:
          BoxDecoration(color: color1, borderRadius: BorderRadius.circular(3)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30.0, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Option 1',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 109, 218, 113),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      'FREE',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: color1),
                                    )))
                              ],
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: value2,
                ),
                Text(
                  'People who earn less than 50k can apply free by submitting the required appropriate documents',
                  style: TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold, color: color2),
                ),
              ],
            ),
            const SizedBox(
              height: value2,
            ),
            SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const Free_Apply());
                },
                child: Text(
                  'APPLY NOW',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400, color: color1),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(gradiant1),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container Box2() {
    return Container(
      height: 300,
      width: 300,
      decoration:
          BoxDecoration(color: color1, borderRadius: BorderRadius.circular(3)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 30.0, left: 30, right: 30, bottom: 10),
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      'Option 1',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey),
                                    ),
                                  ),
                                ),
                                Container(
                                    height: 40,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      'PAID',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: color1),
                                    )))
                              ],
                            )),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: value2,
                ),
                Text(
                  "Who earn above 50k will pay \$160(PKR Equivalent) while submitting required documents",
                  style: TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold, color: color2),
                ),
              ],
            ),
            const SizedBox(
              height: value2,
            ),
            SizedBox(
              height: 50,
              width: 130,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => const Paid_Apply());
                },
                child: Text(
                  'APPLY NOW',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400, color: color1),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(gradiant1),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
