import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/auth/apply%20now/thanks_Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Free_Apply extends StatefulWidget {
  const Free_Apply({Key? key}) : super(key: key);

  @override
  _Free_ApplyState createState() => _Free_ApplyState();
}

// ignore: camel_case_types
class _Free_ApplyState extends State<Free_Apply> {
  String dropDown = 'Enabling Video Series';
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
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: color1),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30.0, right: 30, top: 20, bottom: 20),
                child: Column(
                  children: [
                    Text(
                      'Kindly Fill Form To Enroll',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: color2),
                    ),
                    const SizedBox(
                      height: value2,
                    ),
                    SizedBox(
                      height: 40,
                      width: 180,
                      child: ElevatedButton(
                        onPressed: () {
                          // Get.to(() => const Free_Apply());
                        },
                        child: Text(
                          'Learn How To Apply?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: color1),
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
                    const SizedBox(
                      height: value1,
                    ),
                    Form(
                      child: Column(
                        children: [
                          Information(),
                          const SizedBox(
                            height: value1,
                          ),
                          Documents(),
                          const SizedBox(
                            height: value3,
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
                                Get.to(() => Thanks_Screen(
                                      isChecking: false,
                                    ));
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
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  // ignore: non_constant_identifier_names
  Column Documents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CNIC/B-Form Front Side',
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
              width: 290,
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
          'CNIC/B-Form Back Side',
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
              width: 290,
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
          'Electricity/Gas/Water/Bill Copy',
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
              width: 290,
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
          'Salary Slip/Contract Letter/Bank Statement/Student ID Card',
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
              width: 290,
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
        Container(
          height: 120,
          width: 290,
          decoration: const BoxDecoration(),
          child: TextFormField(
              style: const TextStyle(color: Colors.grey),
              cursorColor: Colors.grey,
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              decoration: const InputDecoration(
                hintText: 'Comments / Queries ',
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
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Column Information() {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: color1,
                border: Border.all(color: Colors.grey, width: .5)),

            // const Padding(
            //   padding: EdgeInsets.only(left: 15.0),
            //   child: Text(
            //     'Enabling Video Series',
            //     style:
            //         TextStyle(fontSize: 16, color: Colors.grey),
            //   ),
            // ),
            child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15.0),
                child: DropdownButton<String>(
                  // ignore: unnecessary_null_comparison
                  hint: dropDown == null
                      ? const Text('Dropdown')
                      : Text(
                          dropDown,
                          style: const TextStyle(color: Colors.grey),
                        ),
                  isExpanded: true,
                  iconSize: 20.0,
                  style: const TextStyle(color: Colors.grey),
                  items: ['One', 'Two', 'Three'].map(
                    (val) {
                      return DropdownMenuItem<String>(
                        value: val,
                        child: Text(val),
                      );
                    },
                  ).toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        dropDown = val.toString();
                      },
                    );
                  },
                ))),
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
                hintText: 'Enter youe name ',
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
                hintText: 'Father/Husband Name ',
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
                hintText: 'CNIC ',
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
                hintText: 'Gender ',
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
                hintText: 'Email ',
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
                hintText: "Phone/ What's App Number",
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
                hintText: 'Country ',
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
                hintText: 'City ',
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
                hintText: 'From Where You Heard About Enablers',
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
                hintText: 'Facebook Profile Link',
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
      ],
    );
  }
}
