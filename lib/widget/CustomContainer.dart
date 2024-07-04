import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String textname;
  final double width;
  final double high;
  final double FontSize;
  CustomContainer({required this.textname ,required this.width, required this.high, required this.FontSize});
  @override
  Widget build(BuildContext context) {
  return Container(
      width: width.w,
      height: high.h,
      decoration: ShapeDecoration(
        color: Color(0xFF5486E9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
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
    child: Center(
      child: Text(
        "$textname",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: FontSize.sp,
          fontStyle: FontStyle.italic,
          fontFamily: 'AlegreyaSC',
          fontWeight: FontWeight.w400,
          height: 0.h,

        ),
      ),
    ),
  )
  ;
  }
}
