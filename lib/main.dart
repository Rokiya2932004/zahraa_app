
import 'package:flutter/material.dart';
import 'package:zahraa_app/views/startPage.dart';

void main(){
  runApp(ZozaDesigns());
}
class ZozaDesigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        dialogTheme: DialogTheme(
          backgroundColor: Color(0xFF5486E9),
          elevation: 11,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
            side:const BorderSide(
                color: Colors.black,
                width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
          ),
          shadowColor: Color(0x3F000000),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: StartPage(),
    );
  }
}
