import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final bool rightAligned;

  CustomAppBar({required this.text, required this.textAlign , this.textDirection,this.rightAligned = false,});
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:[
        Container(
          height: 110.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.r),
                bottomRight: Radius.circular(30.r),
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
        PositionedDirectional(
          start: rightAligned ? null : 30.w,
          end: rightAligned ? 30.w : null,
          bottom: 10.h,
          child: Align(
            alignment: rightAligned ? AlignmentDirectional.centerEnd : AlignmentDirectional.centerStart,
            child: Text(
              '$text',
              textAlign: textAlign,
              textDirection: textDirection,
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.sp,
                fontStyle: FontStyle.italic,
                fontFamily: 'AlegreyaSC',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),

      ]);
  }
}








