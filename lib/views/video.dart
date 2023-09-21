import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  final String videoUrl;

  VideoPlayerPage({required this.videoUrl});

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoPlayerController _videoController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    _videoController = VideoPlayerController.networkUrl(
      Uri.parse(widget.videoUrl),
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: true,
      aspectRatio: 16/9,
      looping: true,
      customControls: Container(),
    );
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox.expand(
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















    _videoController.dispose();
    _chewieController.dispose();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
