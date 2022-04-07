import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:evs_app/Models/colors.dart';
import 'package:evs_app/screens/Categories/courses.dart';
import 'package:evs_app/screens/Categories/video%20player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';
import 'dart:core';

import '../../Models/drawer.dart';

// ignore: camel_case_types
class Videos_Category extends StatefulWidget {
  const Videos_Category({Key? key}) : super(key: key);

  @override
  _Videos_CategoryState createState() => _Videos_CategoryState();
}

// ignore: camel_case_types
class _Videos_CategoryState extends State<Videos_Category> {
  bool _isLoading = true;
  final url = 'https://api.enablerspk.com/EVS/VideoSeries';
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

    final response = await dio.post(url, data: {'Id': '211'});
    debugPrint('Request Served');
    debugPrint(
        'Status Code --- > ${response.statusCode} : \nBody ----> ${response.data}');
    // final jsonData = json.decode(response.data);
    debugPrint('Without Decode ---> ${response.data[0]['Id']}');

    setState(() {
      _postJson = response.data[0]['mEVSVideoBO'];
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
                        'Lectures',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: color1),
                      ),
                      elevation: 0,
                      actions: [
                        IconButton(
                            onPressed: () {
                              Get.to(() => const Courses_List());
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
                                              height: 120,
                                              width: 300,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  color: color1),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: InkWell(
                                                  child: Row(
                                                    children: [
                                                      InkWell(
                                                        child: Container(
                                                            height: 100,
                                                            width: 100,
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(
                                                                                0),
                                                                    color:
                                                                        color2,
                                                                    image:
                                                                        DecorationImage(
                                                                      image: NetworkImage(
                                                                          _postJson[i]
                                                                              [
                                                                              "VideoThumbnail"]),
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    )),
                                                            child: IconButton(
                                                                onPressed:
                                                                    () {},
                                                                icon: Icon(
                                                                  FontAwesomeIcons
                                                                      .play,
                                                                  color: color1,
                                                                ))),
                                                        onTap: () {},
                                                      ),
                                                      const SizedBox(
                                                        width: value1,
                                                      ),
                                                      Center(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            SizedBox(
                                                              width: 160,
                                                              child: Text(
                                                                "${_postJson[i]["CourseName"]}",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16,
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
                                                            Text(
                                                              "${_postJson[i]["Description"]}",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  color:
                                                                      color2),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      Get.to(() => video_demo(
                                                          autoplay: true,
                                                          looping: true,
                                                          videoPlayerController:
                                                              VideoPlayerController
                                                                  .asset(
                                                            "images/video1.mp4",
                                                          )));
                                                    });
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
              InkWell(
                child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0), color: color2),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.play,
                          color: color1,
                        ))),
                onTap: () {},
              ),
              const SizedBox(
                width: value1,
              ),
              Center(
                child: Column(
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
                          fontSize: 10,
                          fontWeight: FontWeight.w300,
                          color: color2),
                    ),
                  ],
                ),
              )
            ],
          ),
          onTap: () {
            setState(() async {
              await Get.to(() => video_demo(
                  autoplay: true,
                  looping: true,
                  videoPlayerController: VideoPlayerController.asset(
                    "images/BusinessCard8.mp4",
                  )));
            });
          },
        ),
      ),
    );
  }
}
