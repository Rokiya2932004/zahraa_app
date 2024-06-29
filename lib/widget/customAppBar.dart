import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  final String text;
   CustomAppBar({required this.text });
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
        Positioned(
        child: Container(
          height: 103,
          decoration:const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            shadows: [
              BoxShadow(
                color: Color(0x63000000),
                blurRadius: 10,
                offset: Offset(0, 7),
                spreadRadius: 0,
              )
            ],
          ),
        ),
      ),
        Positioned(
          bottom: 15,
        left: 30,
        child: Text(
        '$text',
        style: const TextStyle(
        color: Colors.black,
        fontSize: 40,
        fontStyle: FontStyle.italic,
        fontFamily: 'AlegreyaSC',
        fontWeight: FontWeight.w400,
          height: 0,

        ),

        ),
      ),


      ]);
  }
}








