import 'package:flutter/material.dart';
import 'package:management/routes/routesscreen.dart';
import 'package:management/routes/routesutils.dart';
import 'package:management/screens/screen2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        const Text("Screen One"),
              Text("hi i am Poornesh Screen one"),
        ElevatedButton(
          onPressed: () {
            //this is with push named routing
            RoutesUtils.navToScreen2(context, "Poornesh");
            //normal routing with material page route
            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
            // return ScreenTwo();
            // } ),
          },
          child: const Text("Click here TO GO TO SCREEN Two"),
        )
      ]),
    );
  }
}
