import 'dart:io';
import 'dart:math';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

// ignore: camel_case_types
class Player extends StatefulWidget {
  const Player({Key? key}) : super(key: key);

  // ignore: use_key_in_widget_constructors

  @override
  _PlayerState createState() => _PlayerState();
}

// ignore: camel_case_types
class _PlayerState extends State<Player> {
  // final url = 'https://api.enablerspk.com/EVSVideo/VideoSeries';
  // var _postJson = [];
  // var i = 0;

  // void fetchdata() async {
  //   debugPrint('API Hit');

  //   // try {
  //   // final response = await http.post(
  //   //   Uri.parse(url),
  //   // headers: {
  //   //   'Content-Length': '0',
  //   //   'Host': '<calculated when request is sent>',
  //   //   'User-Agent': 'PostmanRuntime/7.29.0',
  //   //   'Accept': '*/*',
  //   //   'Accept-Encoding': 'gzip, deflate, br',
  //   //   'Connection': 'keep-alive',
  //   // },
  //   // );

  //   Dio dio = Dio();

  //   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
  //       (HttpClient client) {
  //     client.badCertificateCallback =
  //         (X509Certificate cert, String host, int port) => true;
  //     return client;
  //   };

  //   final Response response = await dio.post(url, data: {'Id': '277'});
  //   // debugPrint('Request Served');
  //   // debugPrint(
  //   //     'Status Code --- > ${response.statusCode} : \nBody ----> ${response.data}');
  //   // // final jsonData = json.decode(response.data);
  //   // debugPrint('Without Decode ---> ${response.data}');

  //   setState(() {
  //     _postJson = response.data[0]['mEVSVideoBO'];
  //   });
  //   setState(() {});
  //   // } catch (err) {}
  // }

  late VideoPlayerController controller;

  // final asset = widget.videoUrl;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    // fetchdata();
    // controller = VideoPlayerController.network(widget.videoUrl)
    controller = VideoPlayerController.asset("")
      ..addListener(() {
        setState(() {});
      })
      ..setLooping(false)
      ..initialize().then((_) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xfff05c2f),
          // title: Text("${_postJson[i]["CourseName"]}"),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: SingleChildScrollView(
                child: Column(children: [
              Center(
                child: Container(
                    child: controller.value.isInitialized
                        ? Container(
                            alignment: Alignment.topCenter,
                            child: buildvideo(),
                          )
                        : const SizedBox(
                            height: 200,
                            child: Center(
                              child: CircularProgressIndicator(),
                            ))),
              ),
              const SizedBox(
                height: 20,
              ),
              // ListView.builder(
              //     itemCount: _postJson.length,
              //     physics: const ClampingScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (context, i) {
              //       return Container(
              //         color: Colors.white,
              //         child: Padding(
              //           padding: const EdgeInsets.only(
              //               top: 10.0, left: 10.0, right: 10.0),
              //           child: Column(
              //             children: [
              //               Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   SizedBox(
              //                     width: 200,
              //                     // color: Colors.red,
              //                     child: Align(
              //                       alignment: Alignment.topLeft,
              //                       child: Padding(
              //                         padding: const EdgeInsets.all(8.0),
              //                         child: Column(
              //                           crossAxisAlignment:
              //                               CrossAxisAlignment.start,
              //                           children: [
              //                             Text(
              //                               "${_postJson[i]["Title"]}",
              //                               style: const TextStyle(
              //                                   fontSize: 15,
              //                                   fontWeight: FontWeight.w800,
              //                                   color: Colors.black,
              //                                   letterSpacing: 1),
              //                               textAlign: TextAlign.left,
              //                             ),
              //                             const SizedBox(
              //                               height: 23,
              //                             ),
              //                             Container(
              //                               decoration: BoxDecoration(
              //                                   color: const Color(0xfff05c2f),
              //                                   borderRadius:
              //                                       BorderRadius.circular(10)),
              //                               child: Padding(
              //                                 padding:
              //                                     const EdgeInsets.all(5.0),
              //                                 child: Text(
              //                                   "${_postJson[i]["CourseName"]}",
              //                                   style: const TextStyle(
              //                                       fontSize: 7,
              //                                       fontWeight: FontWeight.w800,
              //                                       color: Colors.white,
              //                                       letterSpacing: 1),
              //                                   textAlign: TextAlign.left,
              //                                 ),
              //                               ),
              //                             ),
              //                           ],
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   const SizedBox(
              //                     height: 5,
              //                   ),
              //                   Stack(children: [
              //                     Container(
              //                       margin: const EdgeInsets.all(0),
              //                       height: 60,
              //                       width: 120,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(5),
              //                         image: DecorationImage(
              //                             image: NetworkImage(
              //                                 _postJson[i]["VideoThumbnail"]),
              //                             fit: BoxFit.cover),
              //                       ),
              //                     ),
              //                     Container(
              //                       alignment: Alignment.bottomCenter,
              //                       margin: const EdgeInsets.all(0),
              //                       height: 60,
              //                       width: 120,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(5),
              //                         color: Colors.black45,
              //                       ),
              //                       child: InkWell(
              //                         child: Stack(
              //                           children: [
              //                             Align(
              //                               alignment: Alignment.bottomRight,
              //                               child: Container(
              //                                 margin: const EdgeInsets.all(5),
              //                                 alignment: Alignment.center,
              //                                 height: 15,
              //                                 width: 35,
              //                                 color: Colors.black,
              //                                 child: Padding(
              //                                   padding:
              //                                       const EdgeInsets.all(1.0),
              //                                   child: Text(
              //                                     "${_postJson[i]["Description"]}",
              //                                     style: const TextStyle(
              //                                         fontSize: 7,
              //                                         fontWeight:
              //                                             FontWeight.w700,
              //                                         color: Colors.white,
              //                                         letterSpacing: 1),
              //                                     textAlign: TextAlign.start,
              //                                   ),
              //                                 ),
              //                               ),
              //                             ),
              //                             Center(
              //                               child: IconButton(
              //                                   onPressed: () {
              //                                     Navigator.of(context).push(
              //                                         MaterialPageRoute(
              //                                             builder: (BuildContext
              //                                                     context) =>
              //                                                 Player(
              //                                                     videoUrl:
              //                                                         _postJson[
              //                                                                 i]
              //                                                             [
              //                                                             "VideoURL"])));
              //                                   },
              //                                   icon: const Icon(
              //                                     Icons.play_arrow_rounded,
              //                                     size: 40,
              //                                     color: Colors.white,
              //                                   )),
              //                             ),
              //                           ],
              //                         ),
              //                         onTap: () {
              //                           Navigator.of(context).push(
              //                               MaterialPageRoute(
              //                                   builder: (BuildContext
              //                                           context) =>
              //                                       Player(
              //                                           videoUrl: _postJson[i]
              //                                               ["VideoURL"])));
              //                         },
              //                       ),
              //                     ),
              //                   ]),
              //                   const SizedBox(
              //                     height: 1,
              //                   ),

              //                   // E_Commerce()
              //                 ],
              //               ),
              //               Divider(
              //                 height: 10,
              //                 thickness: .5,
              //                 color: Colors.grey.shade400,
              //                 indent: 10,
              //               )
              //             ],
              //           ),
              //         ),
              //       );
              //     }),
            ]))));
  }

  Widget buildvideo() {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          controller.value.isPlaying ? controller.pause() : controller.play();
        },
        child: Column(
          children: [
            Stack(children: [
              buildvideoPlayer(),
              Positioned.fill(
                  child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: buildIndicator(),
                  )
                ],
              ))
            ]),
            Container(
                height: 70,
                width: double.infinity,
                color: const Color(0xfff05c2f),
                child: Center(child: _buildPlay(context))),
          ],
        ));
  }

  Widget buildvideoPlayer() {
    return AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: VideoPlayer(controller));
  }

  Widget buildIndicator() {
    return VideoProgressIndicator(controller, allowScrubbing: true);
  }

  String convertTwo(int value) {
    return value < 10 ? "0$value" : "$value";
  }

  String convertTwo2(double value) {
    return value < 10 ? "0$value" : "$value";
  }

  _buildPlay(BuildContext context) async {
    final isMuted = controller.value.volume == 0;
    // ignore: prefer_typing_uninitialized_variables
    Duration? _duration;
    Duration? _position;
    final duration = _duration?.inSeconds ?? 0;
    final head = _position?.inSeconds ?? 0;
    var _progress = 0.0;
    final remained = max<num>(
      0,
      duration - head,
    );
    final minus = convertTwo(remained ~/ 60.0);
    final second = convertTwo2(remained % 60.0);

    // ignore: prefer_conditional_assignment
    if (_duration == null) {
      _duration = controller.value.duration;
    }
    var durations = _duration;
    if (durations == null) {
      return null;
    }

    var position = await controller.position;
    _position = position;
    final playing = controller.value.isPlaying;
    if (playing) {
      // ignore: prefer_typing_uninitialized_variables
      bool _dispose = true;
      if (_dispose) {
        setState(() {
          _progress = position!.inMilliseconds.ceilToDouble() /
              durations.inMilliseconds.ceilToDouble();
        });
      }
    }
    bool _isplaying = false;
    _isplaying = playing;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.fast_rewind),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
                controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.fast_forward),
            color: Colors.white,
            onPressed: () {},
          ),
          if (controller.value.isInitialized)
            IconButton(
              onPressed: () {
                controller.setVolume(isMuted ? 1 : 0);
              },
              icon: Icon(isMuted ? Icons.volume_mute : Icons.volume_up),
              color: Colors.white,
            ),
          // Text("$minus:$second")
        ],
      ),
    );
  }
}



// Widget _countrolView(BuildContext context) {}
