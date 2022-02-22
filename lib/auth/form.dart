import 'package:evs_app/auth/apply%20now/apply.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../Models/colors.dart';

// ignore: camel_case_types
class Form_Menu extends StatefulWidget {
  const Form_Menu({Key? key}) : super(key: key);

  @override
  _Form_MenuState createState() => _Form_MenuState();
}

// ignore: camel_case_types
class _Form_MenuState extends State<Form_Menu> {
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 130.0, bottom: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          const SizedBox(
                            height: value2,
                          ),
                          InkWell(
                            child: Container(
                              height: 40,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                      color: color1,
                                      width: .5,
                                      style: BorderStyle.solid)),
                              child: Center(
                                  child: Text(
                                'APPLY NOW',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: color1),
                              )),
                            ),
                            onTap: () {
                              Get.to(() => const Apply_Now());
                            },
                          ),
                          const SizedBox(
                            height: value1,
                          ),
                          Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: color1,
                                    width: .5,
                                    style: BorderStyle.solid)),
                            child: Center(
                                child: Text(
                              'APPLICATION STATUS',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: color1),
                            )),
                          ),
                          const SizedBox(
                            height: value1,
                          ),
                          Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: color1,
                                    width: .5,
                                    style: BorderStyle.solid)),
                            child: Center(
                                child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                  color: color1),
                            )),
                          ),
                          const SizedBox(
                            height: value1,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
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
}
