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
    _controller = VideoPlayerController.network('http://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_20mb.mp4');
    _chewieController =ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16/9,
      autoPlay: false,
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
