
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class customButton extends StatelessWidget {
  final String name;
  Function onPreased;
  customButton({required this.name, required this.onPreased});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(113.w,  45.h)),
          backgroundColor: MaterialStateProperty.all(Color(0xFF5486E9)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
              ))
      ),
        onPressed: (){
          onPreased();
        },
        child: Text(
          '$name',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 36.sp,
            fontFamily: 'AlegreyaSC',
            fontWeight: FontWeight.w400,
            height: 1.h,
          ),
        ),
    );
  }

}
