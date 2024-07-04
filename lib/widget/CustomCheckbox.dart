import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatefulWidget {
  final String textChoosen;
  CustomCheckBox({required this.textChoosen});
  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w ),
        child: CheckboxListTile(
          activeColor: Colors.white,
          checkColor: Colors.black,
            side: BorderSide(
                color: Colors.black,
                width: 1.4.w
            ),


          title:  Text(
              widget.textChoosen,
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontFamily: 'AlegreyaSC',
              fontWeight: FontWeight.w400,
              height: 0.h,

            ),
          ),
            value: status,
            onChanged:(val){
            setState(() {
              status = val!;
            });
            }),
      ),
    );
  }
}
