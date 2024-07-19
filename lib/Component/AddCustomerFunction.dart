import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/CustomCheckbox.dart';
void showCustomAddDialog(BuildContext context){
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            content: Container(
              height: 270.h,
              width: 340.w,
              child: Column(
                children: [
                   SizedBox(height: 18.h,),
                  TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 3.h),
                        hintText: "الأسم",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'AlegreyaSC',
                        fontWeight: FontWeight.w400,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                        border:InputBorder.none,
                        enabledBorder: buildBorder(),
                        focusedBorder: buildBorder()
                    ),
                  ),
                   SizedBox(height: 12.h,),
                  CustomCheckBox(textChoosen: 'الكاجوال',),
                  CustomCheckBox(textChoosen: 'السوارية',),
                   SizedBox(height: 15.h,),
                  ElevatedButton(
                    style:ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                          const  Color(0x3F000000)
                      ),
                        minimumSize: MaterialStateProperty.all( Size(220.w, 45.h)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.r),
                                side:const BorderSide(color: Colors.white)
                            )
                        )
                    ) ,
                      onPressed: (){},
                      child: Padding(
                        padding:  EdgeInsets.only(top: 15.h),
                        child: Text(
                          "add",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.sp,
                              fontStyle: FontStyle.italic,
                              fontFamily: 'AlegreyaSC',
                              fontWeight: FontWeight.w400,
                              letterSpacing: 4.80,
                              height: 0.05.h,
                          ),
                        ),
                      )),
                ],
              ),
            ),

          );
        });
}
OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.r),
      borderSide:const BorderSide(
          color: Colors.white
      )
  );
}
