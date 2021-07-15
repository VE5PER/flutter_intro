import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyPage()));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static String vidId='ejoEUpUSIiU';
  YoutubePlayerController _controller = YoutubePlayerController(initialVideoId: vidId,flags: YoutubePlayerFlags(
    autoPlay: true,
    mute: false,
  ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
child: YoutubePlayer(
  controller: _controller,
  showVideoProgressIndicator: true,
),
      )
    );
  }
}
