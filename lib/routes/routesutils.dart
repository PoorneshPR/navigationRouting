import 'package:flutter/cupertino.dart';
import 'package:management/arguments.dart';
import 'package:management/routes/routesnames.dart';
import 'package:management/routes/routesscreen.dart';
import 'package:management/screens/profilepage.dart';

class RoutesUtils{
  static currentNavPop(BuildContext ctx){
    Navigator.of(ctx).pop();
  }
  static fullNavPop(BuildContext ctx){
    Navigator.popUntil(ctx, (Route<dynamic> route) => route.isFirst);
  }
  static navToScreen2(BuildContext context,String name){
    Navigator.pushNamed(context, RoutesNames.secondRoute,arguments:Arguments(name: name) );

  }
  static nav2ToScreen3(BuildContext context,String name){
    Navigator.pushNamed(context, RoutesNames.thirdRoute,arguments:Arguments(name: name) );

  }

  // static nav2To3(BuildContext context){
  //   Navigator.pushNamed(context, )
  // }
}