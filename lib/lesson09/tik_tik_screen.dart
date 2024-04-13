import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TikTokScreen extends StatefulWidget {
  const TikTokScreen({super.key});

  @override
  State<TikTokScreen> createState() => _TikTokScreenState();
}

class _TikTokScreenState extends State<TikTokScreen> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (contex, index) {
            return InkWell(
              onTap: (){
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              },
              child: Container(
                color: Colors.cyanAccent,
                child: Center(
                  child: _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : Container(),
                ),
              ),
            );
          }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const CircleAvatar(radius: 40,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite, size: 30, color: Colors.grey,)),
          const Text('Like'),
          IconButton(onPressed: (){}, icon: const Icon(Icons.comment, size: 30, color: Colors.grey,)),
          const Text('Comment'),
          IconButton(onPressed: (){}, icon: const Icon(Icons.share, size: 30, color: Colors.grey,)),
          const Text('Share'),
        ],
      ),
    );
  }
}
