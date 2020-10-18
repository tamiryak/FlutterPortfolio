import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:html' as html;
import 'package:chewie/chewie.dart';
import 'package:portfolio_web/home_page.dart';
import 'package:video_player/video_player.dart';
import 'package:animated_widgets/animated_widgets.dart';

final videoPlayerController = VideoPlayerController.network(
    'https://www.youtube.com/watch?v=Wo-V3CbOJ60&t=21s');

final chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  autoPlay: false,
  looping: true,
);

final playerWidget = Chewie(
  controller: chewieController,
);

void main() {
  runApp(MyApp());
}

//----------------root------------------
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Home Page',
      theme: ThemeData.dark(),
      home: MyHomePage(),

    );
  }
}

//--------------Home Page-------------

class Flutube extends StatefulWidget {
  Flutube({Key key}) : super(key: key);

  @override
  _FlutubeState createState() => _FlutubeState();
}

class _FlutubeState extends State<Flutube> {

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Container(width: 700,height: 500,child:playerWidget));
  }
}
