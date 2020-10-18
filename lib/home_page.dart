import 'package:flutter/material.dart';
import 'package:portfolio_web/about_me_page.dart';
import 'package:portfolio_web/first_page.dart';
import 'package:portfolio_web/main.dart';
import 'package:portfolio_web/projects_page.dart';
import 'package:portfolio_web/responsive_widget.dart';
import 'package:portfolio_web/video_player_web.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _key;
  var tag = true;
  var tag2 = false;
  var tag3 = false;
  var tag4 = false;
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  AnimatedOpacity(
                      opacity: tag ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Visibility(visible: tag, child: FirstPage())),
                  AnimatedOpacity(
                      opacity: tag2 ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Visibility(visible: tag2, child: AboutMe())),
                  AnimatedOpacity(
                      opacity: tag3 ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Visibility(visible: tag3, child: Projects())),
                  AnimatedOpacity(
                      opacity: tag4 ? 1.0 : 0.0,
                      duration: Duration(milliseconds: 500),
                      child: Container(
                          alignment: Alignment.center,
                          child: Visibility(visible: tag4, child: VideoApp()))),

                ],
                
              ),
            ],
          ),
          appBar: !ResponsiveWidget.isSmallScreen(context)
              ? AppBar(
                  toolbarHeight: 50,
                  backgroundColor: Colors.black,
                  centerTitle: true,
                  
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          child: Text(
                            'Home',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () => {
                            setState(() {
                              tag = true;
                              tag2 = false;
                              tag3 = false;
                              tag4 = false;
                            })
                          },
                        ),
                        FlatButton(
                          child: Text(
                            'About Me',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () => {
                            setState(() {
                              tag = false;
                              tag2 = true;
                              tag3 = false;
                              tag4 = false;
                            })
                          },
                        ),
                        FlatButton(
                          child: Text(
                            'Projects',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () => {
                            setState(() {
                              tag = false;
                              tag2 = false;
                              tag3 = true;
                              tag4 = false;
                            })
                          },
                        ),
                        FlatButton(
                          child: Text(
                            'Video',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          onPressed: () => {
                            setState(() {
                              tag = false;
                              tag2 = false;
                              tag3 = false;
                              tag4 = true;
                            })
                          },
                        ),
                      ],
                    ),
                  ))
              : AppBar(
                  backgroundColor: Colors.black,
                  toolbarHeight: 50,
                ),
          drawer: ResponsiveWidget.isSmallScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context)
              ? Drawer(
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    children: <Widget>[
                      FlatButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () => {
                          setState(() {
                            tag = true;
                            tag2 = false;
                            tag3 = false;
                            tag4 = false;
                            Navigator.of(context).pop();
                          })
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'About Me',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () => {
                          setState(() {
                            tag = false;
                            tag2 = true;
                            tag3 = false;
                            tag4 = false;
                            Navigator.of(context).pop();
                          })
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Projects',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () => {
                          setState(() {
                            tag = false;
                            tag2 = false;
                            tag3 = true;
                            tag4 = false;
                            Navigator.of(context).pop();
                          })
                        },
                      ),
                      FlatButton(
                        child: Text(
                          'Video',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        onPressed: () => {
                          setState(() {
                            tag = false;
                            tag2 = false;
                            tag3 = false;
                            tag4 = true;
                            Navigator.of(context).pop();
                          })
                        },
                      ),
                    ],
                  ),
                )
              : null),
    );
  }
}
class CopyRight extends StatelessWidget {
  const CopyRight({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Text("Made by Flutter © All the copyrights reserved to Tamir Yakov",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),)
    );
  }
}
