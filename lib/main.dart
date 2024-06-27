
import 'package:flutter/material.dart';
import 'package:zahraa_app/views/startPage.dart';

void main(){
  runApp(ZozaDesigns());
}
class ZozaDesigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
