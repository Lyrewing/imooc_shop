import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
class VideoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return VideoPageState();
  }
}

class VideoPageState extends State<VideoPage> {
  VideoPlayerController _controller;
  ChewieController _chewieController;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('http://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4');
    _chewieController =ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16/9,
      autoPlay: true,
      looping: false

    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final Size size = _controller.value.size;
    return Scaffold(
      body: Container(
        child: Center(
          child: Chewie(
            controller: _chewieController,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _chewieController.dispose();
  }
}
