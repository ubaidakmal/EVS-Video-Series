import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';

class video_demo extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;
  final bool autoplay;

  video_demo({
    required this.videoPlayerController,
    required this.looping,
    required this.autoplay,
  });

  @override
  _video_demoState createState() => _video_demoState();
}

class _video_demoState extends State<video_demo> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _chewieController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Player"),
      ),
      body: SizedBox(
        height: 220,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Chewie(
            controller: _chewieController = ChewieController(
              videoPlayerController: VideoPlayerController.asset(
                "images/video1.mp4",
              ),
              aspectRatio: 16 / 9,
              autoInitialize: false,
              autoPlay: false,
              looping: true,
            ),
          ),
        ),
      ),
    );
  }
}
