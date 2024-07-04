import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextDirection? textDirection;

  CustomAppBar({required this.text, required this.textAlign , this.textDirection,});
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
        Container(
          height: 110,
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
                blurRadius: 5,
                offset: Offset(0, 7),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 15,
        left: 30,
        child: Text(
          textAlign: textAlign,
          textDirection:textDirection,
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








