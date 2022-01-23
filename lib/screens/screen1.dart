import 'package:flutter/material.dart';
import 'package:management/screens/screen2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
        const Text("Screen One"),
        ElevatedButton(
          onPressed: () {
            //this is with push named routing
            Navigator.of(context).pushNamed('screen2');
            //normally routing with material page route
            // Navigator.of(context).push(MaterialPageRoute(builder: (context){
            // return ScreenTwo();
            // } ),
          },
          child: const Text("Click here TO GO TO SCREEN ONE"),
        )
      ]),
    ));
  }
}
