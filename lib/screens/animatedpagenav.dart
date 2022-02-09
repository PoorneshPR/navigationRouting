import 'package:flutter/material.dart';

class AnimatedPageNav extends PageRouteBuilder{
  final Widget page;
  AnimatedPageNav({required this.page}) :
        super( pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.bounceIn,
          )),
          child: child,
        ),
  );

}