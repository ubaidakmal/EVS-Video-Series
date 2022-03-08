import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/login.dart';
import 'package:evs_app/screens/Categories/categories.dart';
import 'package:evs_app/screens/contact_us.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Drawer_Menu extends StatelessWidget {
  const Drawer_Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [
                0.2,
                0.6,
              ],
                  colors: [
                gradiant4,
                gradiant5
              ])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            floatingActionButton: Align(
              alignment: Alignment.bottomCenter,
              child: FloatingActionButton.extended(
                onPressed: () {
                  Get.offAll(() => const Login_Screen());
                },
                label: Text(
                  'Logout',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: gradiant4),
                ),
                icon: Icon(
                  FontAwesomeIcons.signOutAlt,
                  color: gradiant4,
                ),
                backgroundColor: color1,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    FontAwesomeIcons.userAlt,
                    size: 40,
                    color: color1,
                  ),
                  const SizedBox(height: value1),
                  Text('Ubaid Akmal',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: color1)),
                  Text('email@enablers.org',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: color1)),
                  const SizedBox(height: value2),
                  SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.table,
                                size: 19,
                                color: color1,
                              )),
                          title: Text(
                            'Dashboard',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: color1),
                          ),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: IconButton(
                              onPressed: () {
                                Get.to(() => const Categories());
                              },
                              icon: Icon(
                                FontAwesomeIcons.listAlt,
                                size: 19,
                                color: color1,
                              )),
                          title: Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: color1),
                          ),
                          onTap: () {
                            Get.to(() => const Categories());
                          },
                        ),
                        ListTile(
                          leading: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.solidQuestionCircle,
                                size: 19,
                                color: color1,
                              )),
                          title: Text(
                            'Need Help',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: color1),
                          ),
                          onTap: () {
                            Get.to(() => const Contact_us());
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
