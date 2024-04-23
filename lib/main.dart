import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson07/screens/lesson07.dart';
import 'package:flutter_lesson_march/lesson08/card_screen.dart';
import 'package:flutter_lesson_march/lesson08/grid_screen.dart';
import 'package:flutter_lesson_march/lesson08/lesson08.dart';
import 'package:flutter_lesson_march/lesson09/lesson09.dart';
import 'package:flutter_lesson_march/lesson09/tik_tik_screen.dart';
import 'package:flutter_lesson_march/lesson10/lesson10.dart';
import 'package:flutter_lesson_march/lesson11/screen/main_screen.dart';
import 'package:video_player/video_player.dart';


import 'lesson07/screens/task_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}





/// Stateful widget to fetch and then display video content.
class VideoApp extends StatefulWidget {
  const VideoApp({super.key});

  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://www.youtube.com/shorts/KYjO9QW9OXQ?feature=share'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

