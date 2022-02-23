import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/Categories/categories.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  final url = 'https://api.enablerspk.com/EVSVideo/CoursesByCategory';
  var _postJson = [];
  var i = 0;

  void fetchdata() async {
    debugPrint('API Hit');

    // try {
    // final response = await http.post(
    //   Uri.parse(url),
    // headers: {
    //   'Content-Length': '0',
    //   'Host': '<calculated when request is sent>',
    //   'User-Agent': 'PostmanRuntime/7.29.0',
    //   'Accept': '*/*',
    //   'Accept-Encoding': 'gzip, deflate, br',
    //   'Connection': 'keep-alive',
    // },
    // );

    Dio dio = Dio();

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    final Response response =
        await dio.post(url, data: {'Id': '37', 'StudentId': '126550'});
    // debugPrint('Request Served');
    // debugPrint(
    //     'Status Code --- > ${response.statusCode} : \nBody ----> ${response.data}');
    // // final jsonData = json.decode(response.data);
    // debugPrint('Without Decode ---> ${response.data[0]['Id']}');

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
                        ? const SpinKitSpinningLines(
                            color: Color(0xfff05c2f),
                            size: 40.0,
                          )
                        : SingleChildScrollView(
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
                                          child: TextField(
                                            decoration: InputDecoration(
                                              enabled: true,
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  borderSide: const BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              fillColor: Colors.white,
                                              filled: true,
                                              hintText:
                                                  'Search for anything...',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey.shade400),
                                              suffixIcon: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  FontAwesomeIcons.search,
                                                  color: Colors.grey.shade400,
                                                ),
                                              ),
                                              focusedBorder:
                                                  const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 70,
                                        width: 350,
                                        child: Center(
                                            child: Text(
                                          "ECOMMERCE",
                                          style: const TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              letterSpacing: 1),
                                        )),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      SingleChildScrollView(
                                        child: ListView.builder(
                                            itemCount: _postJson.length,
                                            physics:
                                                const ClampingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder: (context, i) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10.0,
                                                    left: 10.0,
                                                    right: 10.0),
                                                child: Column(
                                                  children: [
                                                    Stack(children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .all(0),
                                                        height: 200,
                                                        decoration:
                                                            BoxDecoration(
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  _postJson[i][
                                                                      "CourseThumbnail"]),
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        margin: const EdgeInsets
                                                            .all(0),
                                                        height: 200,
                                                        decoration:
                                                            const BoxDecoration(
                                                          color: Colors.black45,
                                                        ),
                                                        child: InkWell(
                                                          child: Center(
                                                            child: Text(
                                                              "${_postJson[i]["CourseName"]}",
                                                              style: const TextStyle(
                                                                  fontSize: 36,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      1),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            // Navigator.of(context).push(
                                                            //     MaterialPageRoute(
                                                            //         builder:
                                                            //             (BuildContext context) =>
                                                            //                 const Lectures_menu()));
                                                          },
                                                        ),
                                                      ),
                                                    ]),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      width: 350,
                                                      child: Text(
                                                        "${_postJson[i]["Description"]}",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors
                                                                .grey.shade600,
                                                            letterSpacing: 1),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            }),
                                      )
                                    ]),
                              ),
                            ),
                          )))));
  }
}
