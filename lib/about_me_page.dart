import 'package:animated_widgets/animated_widgets.dart';
import 'package:firebase_image/firebase_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/home_page.dart';
import 'package:portfolio_web/responsive_widget.dart';
import 'dart:html' as html;

import 'package:portfolio_web/white_blur_board.dart';

//--------------About Me-------------
class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset('images/pic.png').image, fit: BoxFit.fill),
        ),
        child: CopyRight(),
      ),
      Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
            child: WhiteBlurScreen(w: 900, h: 450, child: BodyAboutMe())),
      ),
    ]);
  }
}

@override
Widget build(BuildContext context) {
  return ResponsiveWidget(
    largeScreen: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[],
    ),
    smallScreen: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        BodyAboutMe()
      ],
    ),
  );
}

class BodyAboutMe extends StatelessWidget {
  const BodyAboutMe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        width: 800,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0),
            ),
            Anime2(
              duration: Duration(milliseconds: 100),
              child: Text(
                'About Me\n',
                style: TextStyle(
                    fontSize: 30,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Anime2(
              duration: Duration(milliseconds: 200),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'My name is Tamir and I am 26 years old.\n'
                  'I built my first program when I was twelve and right from the start I knew that my dream would be to fit in the high-tech Industry.\n'
                  'After serval years of studying and exploring, I am searching for the first job that would give me the opportunity to rise and success in the field.',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // SizedBox(width: 250, height: 200),
                Anime2(
                  duration: Duration(milliseconds: 300),
                  child: Image.asset(
                    'images/duck.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                Column(
                  children: [
                    Anime2(
                      duration: Duration(milliseconds: 400),
                      child: Text(
                        'Contact Details',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                    ),
                    Anime2(
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        'Tamir Yakov\nBeer Sheva, Israel\n+972-25859629\nTamiryakov@gmail.com',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                // SizedBox(width: 100, height: 200),
                Anime2(
                  duration: Duration(milliseconds: 600),
                  child: Container(
                    // margin: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        FlatButton(
                          child: Text('Download Resume'),
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                          onPressed: () {
                            html.window.open(
                                'https://drive.google.com/file/d/1yGSdJapTZtXmN6qxYlD6jbNck50wtarw/view?usp=sharing',
                                'CV');
                          },
                        ),
                        Contact()
                      ],
                    ),
                  ),
                ),
                // SizedBox(width: 50, height: 120),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//--------------Contact-------------

class Contact extends StatelessWidget {
  const Contact({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton.icon(
            icon: SizedBox(
                width: 50,
                height: 50,
                child: Icon(FontAwesomeIcons.whatsapp, color: Colors.black)),
            label: Text('Whatsapp',
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),
            onPressed: () => html.window.open(
                'https://api.whatsapp.com/send?phone=972525859629', 'Tamir'),
          ),
          FlatButton.icon(
            icon: SizedBox(
                width: 50,
                height: 50,
                child: Icon(FontAwesomeIcons.facebookMessenger,
                    color: Colors.black)),
            label: Text('Messanger',
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),
            onPressed: () =>
                html.window.open('https://m.me/tamiryakov', 'Tamir'),
          ),
          FlatButton.icon(
            icon: SizedBox(
                width: 50,
                height: 50,
                child: Icon(FontAwesomeIcons.mailBulk, color: Colors.black)),
            label: Text('Email',
                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),
            onPressed: () => html.window.open(
                'https://www.linkedin.com/in/tamir-yakov-27b8b31a8/', 'Tamir'),
          )
        ],
      ),
    );
  }
}

class Anime2 extends StatelessWidget {
  final Widget child;
  final bool displayMyWidget = true;
  final Duration duration;
  const Anime2({Key key, this.child, this.duration}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TranslationAnimatedWidget(
        enabled: this.displayMyWidget,
        duration:
            duration, //update this boolean to forward/reverse the animation
        values: [
          // disabled value value
          Offset(0, 70), //intermediate value
          Offset(0, 0) //enabled value
        ],
        child: child);
  }
}
