import 'package:flutter/material.dart';
import 'package:management/routes/routesutils.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key,  required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,children: [
                const Text("Screen Three"),
                Text("hi  $name"),
                ElevatedButton(
                  onPressed: () {
                    //this is with push named routing
            RoutesUtils.fullNavPop(context);
           // RoutesUtils.currentNavPop(context);
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
