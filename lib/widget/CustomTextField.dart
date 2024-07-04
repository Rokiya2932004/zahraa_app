import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
 final Color color;
  CustomTextField({required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w),
      child: TextField(
        minLines: 3,
        maxLines: 100,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        cursorColor: Colors.black,
        style: TextStyle(
          fontSize: 30.sp
        ),
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border:InputBorder.none,
            enabledBorder: buildBorder(color),
            focusedBorder: buildBorder(color),
        ),

      ),
    );
  }
}
OutlineInputBorder buildBorder([Color color = Colors.transparent]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide(
          color: color,
        width: 2.w
      )
  );
}