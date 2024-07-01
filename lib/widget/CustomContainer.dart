import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String textname;
  final double width;
  final double high;
  CustomContainer({required this.textname ,required this.width, required this.high});
  @override
  Widget build(BuildContext context) {
  return Container(
      width: width,
      height: high,
      decoration: ShapeDecoration(
        color: Color(0xFF5486E9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadows:const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
    child: Text(
      "$textname",
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontStyle: FontStyle.italic,
        fontFamily: 'AlegreyaSC',
        fontWeight: FontWeight.w400,
        height: 0,

      ),
    ),
  )
  ;
  }
}
