import 'package:flutter/material.dart';
import 'package:management/screens/listview.dart';

class ProfilePage extends StatelessWidget {

   ProfilePage( {Key? key, required this.name, }) : super(key: key);
  String name;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:Text("$name is the profile name")
      ),

    );
  }
}
