import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/Categories/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Models/drawer.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  bool _isLoading = true;
  final url = 'https://api.enablerspk.com/EVS';
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

    final response = await dio.post(url, data: {'StudentId': '236863'});
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
                  'Categories',
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold, color: color1),
                ),
                elevation: 0,
                actions: [
                  IconButton(
                      onPressed: () {},
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
                      child: Column(children: [
                        SingleChildScrollView(
                          child: Center(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 15.0, left: 30, right: 30),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                              borderRadius:
                                                  BorderRadius.circular(30)),
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
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none),
                                                      fillColor: Colors.white,
                                                      filled: false,
                                                      hintText:
                                                          'Search for anything...',
                                                      hintStyle: TextStyle(
                                                          color: Colors
                                                              .grey.shade400),
                                                      focusedBorder:
                                                          const OutlineInputBorder(
                                                              borderSide: BorderSide(
                                                                  color: Colors
                                                                      .white))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: value2,
                                      ),
                                      Text(
                                        'Running Courses',
                                        style: TextStyle(
                                            fontSize: 20, color: color1),
                                      ),
                                      const SizedBox(
                                        height: value3,
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              height: 200,
                                              child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: _postJson.length,
                                                  physics:
                                                      const ClampingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemBuilder: (context, i) {
                                                    return Row(
                                                      children: [
                                                        Stack(children: [
                                                          Container(
                                                            height: 170,
                                                            width: 250,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: NetworkImage(
                                                                        _postJson[i]
                                                                            [
                                                                            "CategoryThumbnail"]),
                                                                    fit: BoxFit
                                                                        .cover),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            height: 170,
                                                            width: 250,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .black45,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            child: Center(
                                                              child: InkWell(
                                                                child: Text(
                                                                  "${_postJson[i]["Name"]}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          30,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                onTap: () {
                                                                  Get.to(() =>
                                                                      const Courses_List());
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                          width: value1,
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: value2,
                                      ),
                                      Text(
                                        'Categories',
                                        style: TextStyle(
                                            fontSize: 20, color: color1),
                                      ),
                                      const SizedBox(
                                        height: value3,
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 110,
                                              child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: _postJson.length,
                                                  physics:
                                                      const ClampingScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemBuilder: (context, i) {
                                                    return Row(
                                                      children: [
                                                        Stack(children: [
                                                          Container(
                                                            height: 100,
                                                            width: 150,
                                                            decoration: BoxDecoration(
                                                                image: DecorationImage(
                                                                    image: NetworkImage(
                                                                        _postJson[i]
                                                                            [
                                                                            "CategoryThumbnail"]),
                                                                    fit: BoxFit
                                                                        .cover),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            height: 100,
                                                            width: 150,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .black45,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6)),
                                                            child: Center(
                                                              child: InkWell(
                                                                child: Text(
                                                                  "${_postJson[i]["Name"]}",
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          16,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      color: Colors
                                                                          .white,
                                                                      letterSpacing:
                                                                          0),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                onTap: () {
                                                                  Get.to(() =>
                                                                      const Courses_List());
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ]),
                                                        const SizedBox(
                                                          width: value1,
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: value3,
                                      ),
                                      Text(
                                        'More',
                                        style: TextStyle(
                                            fontSize: 20, color: color1),
                                      ),
                                    ])),
                          ),
                        ),
                      ]),
                    ),
            )));
  }

  category1() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/eCommerce.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'E-COMMERCE',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category2() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/amazon.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'Amazon Marketing',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category3() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/eCommerce.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black26, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'E-COMMERCE',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category4() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/amazon.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'Amazon Marketing',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }

  category5() {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(children: [
        Container(
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('images/freelancing.jpeg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 100,
          width: 130,
          decoration: BoxDecoration(
              color: Colors.black45, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: InkWell(
              child: const Text(
                'Freelancing',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1),
              ),
              onTap: () {
                Get.to(() => const Courses_List());
              },
            ),
          ),
        ),
      ]),
    );
  }
}
