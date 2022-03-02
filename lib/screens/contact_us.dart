import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/contact_support.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Contact_us extends StatelessWidget {
  const Contact_us({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 300,
                      width: double.infinity,
                      child: Image(
                        image: AssetImage('images/image1.PNG'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    Text(
                      "CONTACT US",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    SizedBox(
                      height: 30,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Adress: ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: color2),
                          ),
                          const SizedBox(
                            width: value3,
                          ),
                          Text(
                            "ward no 14/c ..........",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: color2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    SizedBox(
                      height: 30,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Phone Number: ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: color2),
                          ),
                          const SizedBox(
                            width: value3,
                          ),
                          Text(
                            "0314-xxxxxxx",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: color2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    SizedBox(
                      height: 30,
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Email: ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: color2),
                          ),
                          const SizedBox(
                            width: value3,
                          ),
                          Text(
                            "enablers@gmail.com",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                                color: color2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(() => const Contact_Support());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              FontAwesomeIcons.headphonesAlt,
                              size: 15,
                            ),
                            Text(
                              'Contact Support',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: color1),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(gradiant1),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
