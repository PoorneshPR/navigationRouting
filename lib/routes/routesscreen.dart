import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:management/routes/routesnames.dart';
import 'package:management/screens/animatedpagenav.dart';
import 'package:management/screens/screen1.dart';
import 'package:management/screens/screen2.dart';
import 'package:management/screens/screen3.dart';

import '../arguments.dart';

class RoutesScreen {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.initialRoute:
        return MaterialPageRoute(
          builder: (_) => ScreenOne(),);
      case RoutesNames.secondRoute:
        Arguments args = settings.arguments as Arguments;
        return MaterialPageRoute(
          builder: (_) =>
              ScreenTwo(
                name: args.name,
              ),
        );
      case RoutesNames.thirdRoute:
        Arguments args = settings.arguments as Arguments;
        return AnimatedPageNav(
            page: ScreenThree(
              name: args.name,
            ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                  child: Text('No route defined for ${settings.name}')),
            ));
    }
  }
}