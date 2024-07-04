
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataForm extends StatelessWidget {
  final String datainPrice;
  final String? StaticText;
  DataForm({required this.datainPrice, this.StaticText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 40.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 110.w,
            height: 40.h,
            child: StaticText == null
                ? TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: buildBorder(),
                enabledBorder: buildBorder(),
                focusedBorder: buildBorder(),
              ),
            )
                : Container(
              padding: EdgeInsets.symmetric( horizontal: 10.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                border: Border.all(
                  color: Color(0xFF2868E3),
                  width: 3.w,
                ),
              ),
              child: Center(
                child: Text(
                  StaticText!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,


                  ),
                ),
              ),
            ),
          ),
          Text(
            '$datainPrice',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style:  TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontFamily: 'AlegreyaSC',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}

OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide(
          color:  Color(0xFF2868E3),
        width: 3.w
      )
  );
}