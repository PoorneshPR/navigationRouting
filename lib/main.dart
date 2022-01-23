import 'package:flutter/material.dart';
import 'package:management/screens/listview.dart';
import 'package:management/screens/profilepage.dart';
import 'package:management/screens/screen2.dart';
import 'package:management/screens/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.


        primarySwatch: Colors.blue,
      ),
      home:ListFunctionView(),
        routes: {
        'screen1':(context){
          return ScreenOne();
    },
    'screen2':(context){
          return ScreenTwo();
    },


    },
    );
  }
}
