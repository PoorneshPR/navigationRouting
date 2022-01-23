import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Text("Screen Two"),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pop();
    }, child: Text("Go back to screen one")
        )
        ],
      )),
    );
  }
}
