import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/apply%20now/paid%20apply/payment_proof.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Attch_Reciept extends StatefulWidget {
  const Attch_Reciept({Key? key}) : super(key: key);

  @override
  _Attch_RecieptState createState() => _Attch_RecieptState();
}

// ignore: camel_case_types
class _Attch_RecieptState extends State<Attch_Reciept> {
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
              child: Container(
                width: 320,
                decoration: BoxDecoration(color: color1),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, left: 5, right: 5, bottom: 15),
                  child: Column(
                    children: [
                      User_Info(),
                      const SizedBox(
                        height: value1,
                      ),
                      Enrollment_Info(),
                      const SizedBox(
                        height: value1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Documents(),
                      ),
                      const SizedBox(
                        height: value2,
                      ),
                      Text(
                        "By pressing 'submit' you agree to our ",
                        style: TextStyle(color: Colors.grey.shade500),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('terms & conditions',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ))),
                      SizedBox(
                        height: 50,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => const Payment_Proof_Splash());
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
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Column User_Info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'User Info',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: color2),
        ),
        const SizedBox(
          height: value1,
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: .5)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'Ubaid',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Father Name',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'M.Akmal',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CNIC',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      '32303-xxxxxxx-x',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'xyz@gmail.com',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      '0314-xxxxxxx',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Country',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'Pakistan',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'Lahore',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column Enrollment_Info() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enrollment Info',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: color2),
        ),
        const SizedBox(
          height: value1,
        ),
        Container(
          width: 300,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400, width: .5)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Registration No:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'EVS-02-22-40829',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enrolled For:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'EVS',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Training Name:',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'EVS',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      'Online/Local',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: value3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Payment Price',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    Text(
                      '28320PKR',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column Documents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Kindly fill below form for\npayment proof',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: color2),
        ),
        const SizedBox(
          height: value1,
        ),
        Text(
          'Transaction Amount (PKR)',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color2),
        ),
        const SizedBox(
          height: value1,
        ),
        Container(
          height: 50,
          width: 290,
          decoration: const BoxDecoration(),
          child: TextFormField(
              style: const TextStyle(color: Colors.grey),
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                hintText: '28320',
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
        Container(
          height: 50,
          width: 290,
          decoration: const BoxDecoration(),
          child: TextFormField(
              style: const TextStyle(color: Colors.grey),
              cursorColor: Colors.grey,
              decoration: const InputDecoration(
                hintText: 'Transaction Data',
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
        Text(
          'Attach Payment Reciept ',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color2),
        ),
        const SizedBox(
          height: value1,
        ),
        Stack(
          children: [
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: color1,
                  border: Border.all(color: Colors.grey, width: .5)),
            ),
            Center(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      'Choose File',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: value1,
        ),
        Text(
          'CNIC/Passport Front Side',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color2),
        ),
        const SizedBox(
          height: value1,
        ),
        Stack(
          children: [
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: color1,
                  border: Border.all(color: Colors.grey, width: .5)),
            ),
            Center(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      'Choose File',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: value3,
        ),
        Text(
          'CNIC/Passport Back Side',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w400, color: color2),
        ),
        const SizedBox(
          height: value3,
        ),
        Stack(
          children: [
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: color1,
                  border: Border.all(color: Colors.grey, width: .5)),
            ),
            Center(
              child: InkWell(
                child: Container(
                  margin: const EdgeInsets.all(5),
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                        child: Text(
                      'Choose File',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: value3,
        ),
      ],
    );
  }
}
