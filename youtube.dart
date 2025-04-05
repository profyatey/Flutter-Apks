import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class YouTubePage extends StatefulWidget {
  final String videoUrl;

  const YouTubePage({super.key, required this.videoUrl});

  @override
  YouTubePageState createState() => YouTubePageState();
}

class YouTubePageState extends State<YouTubePage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    if (videoId == null || videoId.isEmpty) {
    } else {
      _controller = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
          mute: false,
        ),
      );
    }
  }

  @override
  void deactivate() {
    _controller.pause(); // Pause the video when the page is deactivated
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose of the controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'The Youth Church In The City',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 150, 23, 14),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            FutureBuilder(
              future: Future.delayed(const Duration(milliseconds: 500)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.red,
                );
              },
            ),
            const SizedBox(height: 12),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Center(
                    child: Text(
                      '''Visit our YouTubePage for more videos. Click Below 👇👇''',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Open the YouTube page in a web browser
                launchUrl(Uri.parse('https://www.youtube.com/@fgciwg/shorts'),
                    mode: LaunchMode.externalApplication);
                launchUrl(Uri.parse('https://www.youtube.com/@fgciwg/shorts'));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 150, 23, 14),
              ),
              child: const Text(
                'YOUTUBE PAGE',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Color.fromARGB(255, 102, 3, 3),
        child: SizedBox(
          height: 50,
          child: Center(
            child: Text(
              '© 2025 FGCI. All rights reserved.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
