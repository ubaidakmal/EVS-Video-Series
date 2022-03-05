import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/Categories/categories.dart';
import 'package:evs_app/screens/Categories/vides_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'dart:core';

import '../../Models/drawer.dart';

// ignore: camel_case_types
class Courses_List extends StatefulWidget {
  const Courses_List({Key? key}) : super(key: key);

  @override
  _Courses_ListState createState() => _Courses_ListState();
}

// ignore: camel_case_types
class _Courses_ListState extends State<Courses_List> {
  bool _isLoading = true;
  final url = 'https://api.enablerspk.com/EVS/CoursesByCategory';
  var _postJson = [];
  void fetchdata() async {
    debugPrint('API Hit');
    Dio dio = Dio();

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    final response =
        await dio.post(url, data: {'CategoryId': '32', 'StudentId': '236863'});
    debugPrint('Request Served');
    debugPrint(
        'Status Code --- > ${response.statusCode} : \nBody ----> ${response.data}');
    // final jsonData = json.decode(response.data);
    debugPrint('Without Decode ---> ${response.data[0]['Id']}');

    setState(() {
      _postJson = response.data;
    });
    setState(() {
      _isLoading = false;
    });
    // } catch (err) {}
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Navigator.of(context).pop();
          return true;
        },
        child: SafeArea(
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
                        'Categories',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: color1),
                      ),
                      elevation: 0,
                      actions: [
                        IconButton(
                            onPressed: () {
                              Get.to(() => const Categories());
                            },
                            icon: Icon(
                              FontAwesomeIcons.longArrowAltLeft,
                              color: color1,
                            )),
                      ],
                      centerTitle: true,
                    ),
                    drawer: const Drawer_Menu(),
                    body: _isLoading
                        ? SpinKitSpinningLines(
                            color: color1,
                            size: 40.0,
                          )
                        : SingleChildScrollView(
                            child: Center(
                                child: Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, left: 30, right: 30),
                            child: Column(children: [
                              Container(
                                alignment: Alignment.center,
                                height: 60,
                                color: const Color(0xfff05c2f),
                                // ignore: sized_box_for_whitespace
                                child: Container(
                                  height: 50,
                                  width: 310,
                                  decoration: BoxDecoration(
                                      color: color1,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          FontAwesomeIcons.search,
                                          color: Colors.grey.shade400,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: value3,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 240,
                                        child: TextField(
                                          decoration: InputDecoration(
                                              enabled: true,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: BorderSide.none),
                                              fillColor: Colors.white,
                                              filled: false,
                                              hintText:
                                                  'Search for anything...',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey.shade400),
                                              focusedBorder:
                                                  const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color:
                                                              Colors.white))),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              // ignore: prefer_const_constructors

                              Text(
                                "ECOMMERCE",
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: color1,
                                    letterSpacing: 1),
                              ),

                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Learn from the expert team of mentors the hidden secrets to becoming a successfull ecommerce specialist and bring explore numerous means of ecommerce enterpreneurship",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: color1,
                                    letterSpacing: 1),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: value2,
                              ),
                              SingleChildScrollView(
                                child: Column(children: [
                                  ListView.builder(
                                      itemCount: _postJson.length,
                                      physics: const ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, i) {
                                        return Column(
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  color: color1),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20.0),
                                                child: InkWell(
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 80,
                                                        width: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(17),
                                                          image:
                                                              DecorationImage(
                                                            image: NetworkImage(
                                                                _postJson[i][
                                                                    "CourseThumbnail"]),
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        width: value1,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          SizedBox(
                                                            width: 150,
                                                            child: Text(
                                                              "${_postJson[i]["CourseName"]}",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      color2),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 3,
                                                          ),
                                                          SizedBox(
                                                            width: 150,
                                                            child: Text(
                                                              "${_postJson[i]["Description"]}",
                                                              style: TextStyle(
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color:
                                                                      color2),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  onTap: () {
                                                    Get.to(() =>
                                                        const Videos_Category());
                                                  },
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: value2,
                                            )
                                          ],
                                        );
                                      })
                                ]),
                              ),
                            ]),
                          )))))));
  }

  // ignore: non_constant_identifier_names
  Container Box1() {
    return Container(
      height: 130,
      width: 300,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(17), color: color1),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          child: Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    image: const DecorationImage(
                      image: AssetImage('images/image2.jpg'),
                      fit: BoxFit.cover,
                    )),
                // child: const Image(
                //   image: AssetImage('images/image2.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
              const SizedBox(
                width: value1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Amazon FBA Private Label',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: color2),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    'Learn from the expert team of\nmentors the hidden secrets to \nbecoming a successfull ecommerce\nspecialist and bring explore',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w300,
                        color: color2),
                  ),
                ],
              )
            ],
          ),
          onTap: () {
            Get.to(() => const Videos_Category());
          },
        ),
      ),
    );
  }
}
