import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_web/home_page.dart';
import 'package:portfolio_web/white_blur_board.dart';
import 'dart:html' as html;

import 'first_page.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('images/code.png').image, fit: BoxFit.fill)),
      child: CopyRight(),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Center(
            child: WhiteBlurScreen(w: 1000, h: 500, child: ProjectBody())),
      ),
    ]);
  }
}

class ProjectBody extends StatelessWidget {
  const ProjectBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        width: 1000,
        height: 470,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Anime(
                offsetX: 100,
                offsetY: 0,
                child: Text(
                  'Projects',
                  style: TextStyle(fontSize: 40),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Anime3(
                      milis:200,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            child: Image.asset('images/android.png',
                                width: 250, height: 150, fit: BoxFit.fill),
                            onTap: () {
                              html.window.open(
                                  'https://github.com/tamiryak/TEAM24PROJECT',
                                  '');
                            }),
                      ),
                    ),
                    Anime3(
                      milis:250,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            child: Image.asset('images/ASP.png',
                                width: 250, height: 150, fit: BoxFit.fill),
                            onTap: () {
                              html.window.open(
                                  'https://github.com/tamiryak/MVCProject', '');
                            }),
                      ),
                    ),
                    Anime3(
                      milis:300,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            child: Image.asset('images/c.png',
                                width: 250, height: 150, fit: BoxFit.fill),
                            onTap: () {
                              html.window.open(
                                  'https://github.com/tamiryak/projectC', '');
                            }),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Anime3(
                      milis:350,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            child: Image.asset('images/flask.png',
                                width: 250, height: 150, fit: BoxFit.fill),
                            onTap: () {
                              html.window.open(
                                  'https://github.com/tamiryak/STMPproject',
                                  '');
                            }),
                      ),
                    ),
                    Anime3(
                      milis:400,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            child: Image.asset('images/flutter.png',
                                width: 250, height: 150, fit: BoxFit.fill),
                            onTap: () {
                              html.window.open(
                                  'https://github.com/tamiryak/FlutterPortfolio',
                                  '');
                            }),
                      ),
                    ),
                    Anime3(
                      milis:450,
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                            child: Image.asset('images/java.png',
                                width: 250, height: 150, fit: BoxFit.fill),
                            onTap: () {
                              html.window.open(
                                  'https://github.com/tamiryak/JavaThreadProject',
                                  '');
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Anime3 extends StatelessWidget {
  final bool _enabled = true;
  final int milis;
  final Widget child;
  const Anime3({Key key, this.child, this.milis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleAnimatedWidget.tween(
        enabled: this._enabled,
        duration: Duration(milliseconds: milis),
        scaleDisabled: 0.5,
        scaleEnabled: 1,

        //your widget
        child: child);
  }
}
