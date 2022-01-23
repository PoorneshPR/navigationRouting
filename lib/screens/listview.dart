import 'package:flutter/material.dart';
import 'package:management/screens/profilepage.dart';

class ListFunctionView extends StatelessWidget {
  ListFunctionView({Key? key, }) : super(key: key);
  late String name ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView.separated(itemBuilder: (context,index){
          return ListTile(title: Text("person $index"),
          onTap: (){
            name ="person $index";
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage(name: name)));
          },);
        },
            separatorBuilder: (context,index){
          return Divider() ;
            }, itemCount:30)
      )
    );
  }
}
