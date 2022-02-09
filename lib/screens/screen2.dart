import 'package:flutter/material.dart';
import 'package:management/routes/routesutils.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({Key? key, required this.name}) : super(key: key);
final  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          const Text("Screen Two"),
          Text("$name is the person going to change as next name called aaron"),

        ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
    }, child: Text("Go back to screen one"),
        ),
          ElevatedButton(onPressed: (){
            RoutesUtils.nav2ToScreen3(context, "aaron");

          }, child: Text("Go  to screen Three")
          )
        ],
      )),
    );
  }
}
