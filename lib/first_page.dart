import 'package:animated_widgets/animated_widgets.dart';
import 'package:firebase_image/firebase_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_web/home_page.dart';
import 'package:portfolio_web/white_blur_board.dart';
import 'dart:html' as html;

class FirstPage extends StatelessWidget {
  final bool displayMyWidget = true;
  const FirstPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height - 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('images/wallpaper.png').image,
                fit: BoxFit.fill),
          ),
          child: CopyRight(),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
            child: WhiteBlurScreen(w: 1000, h: 500, child: Mybody(pad: 0)),
          ),
        ),
      ],
    );
  }
}

//-----------Body------------
class Mybody extends StatelessWidget {
  final double pad;
  final bool displayMyWidget = true;
  const Mybody({
    Key key,
    this.pad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        children: [
          Anime(
            offsetX: 0,
            offsetY: 200,
            child: Center(
              child: AnimatedPadding(
                  duration: Duration(seconds: 5),
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: Image.asset('images/tamir.png').image,
                    ),
                  )),
            ),
          ),
          Anime(
            offsetX: 200,
            offsetY: 0,
            child: Text(
              'Tamir Yakov',
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Anime(
            offsetX: 0,
            offsetY: 200,
            child: AnimatedPadding(
              duration: Duration(seconds: 1),
              padding: EdgeInsets.only(left: pad),
              child: Text(
                'Im a 4th year software engineering student from Beer Sheva, Israel.\n'
                'Looking for my first job in a student position,\n'
                'highly motivated and self learner.\n',
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 1)),
              ),
            ),
          ),
          Anime(
            offsetX: 0,
            offsetY: -200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton.icon(
                  icon: SizedBox(
                      width: 40,
                      height: 40,
                      child:
                          Icon(FontAwesomeIcons.github, color: Colors.black)),
                  label: Text(
                    'Github',
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  onPressed: () =>
                      html.window.open('https://github.com/tamiryak/', 'Tamir'),
                ),
                FlatButton.icon(
                  icon: SizedBox(
                      width: 40,
                      height: 40,
                      child:
                          Icon(FontAwesomeIcons.facebook, color: Colors.black)),
                  label: Text('Facebook',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),
                  onPressed: () => html.window
                      .open('https://www.facebook.com/TamirYakov/', 'Tamir'),
                ),
                FlatButton.icon(
                  icon: SizedBox(
                      width: 20,
                      height: 20,
                      child:
                          Icon(FontAwesomeIcons.linkedin, color: Colors.black)),
                  label: Text('LinkedIn',
                      style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1))),
                  onPressed: () => html.window.open(
                      'https://www.linkedin.com/in/tamir-yakov-27b8b31a8/',
                      'Tamir'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Anime extends StatelessWidget {
  final bool displayMyWidget = true;
  final double offsetX;
  final double offsetY;
  final Widget child;
  const Anime({Key key, this.child, this.offsetX, this.offsetY})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TranslationAnimatedWidget.tween(
        enabled: this.displayMyWidget,
        translationDisabled: Offset(offsetX, offsetY),
        translationEnabled: Offset(0, 0),
        child: OpacityAnimatedWidget.tween(
            enabled: this.displayMyWidget,
            opacityDisabled: 0,
            opacityEnabled: 1,
            child: child));
  }
}
