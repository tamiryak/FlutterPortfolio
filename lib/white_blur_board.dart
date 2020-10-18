import 'dart:ui';

import 'package:flutter/material.dart';

class WhiteBlurScreen extends StatelessWidget {
  final double w;
  final double h;
  final Widget child;
  const WhiteBlurScreen({Key key, this.w, this.h, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
          fit:BoxFit.fitWidth  , 
          child: ClipRRect(
        borderRadius: BorderRadius.circular(60.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),   
          child: Container(
            child: child,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.all(Radius.circular(60))),
            width: MediaQuery.of(context).size.width<500?500:w,
            height: MediaQuery.of(context).size.height<750?400:h,
          ),
        ),
      ),
    );
  }
}
