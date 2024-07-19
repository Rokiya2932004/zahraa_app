import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../views/KajwalScreen.dart';
import '../views/SwaryhScreen.dart';
import '../widget/CustomCheckbox.dart';

void showCustomAddDialog(BuildContext context) {
  bool casualSelected = false;
  bool eveningWearSelected = false;

  showDialog(
    barrierDismissible: true,
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            content: Container(
              constraints: BoxConstraints(
                minHeight: casualSelected && eveningWearSelected ? 168.h : 270.h,
                maxHeight: 270.h,
                minWidth: 340.w,
                maxWidth: 340.w,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min, // Adjust size based on content
                children: [
                  if (!casualSelected || !eveningWearSelected) ...[
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
                        border: InputBorder.none,
                        enabledBorder: buildBorder(),
                        focusedBorder: buildBorder(),
                      ),
                    ),
                    SizedBox(height: 12.h,),
                    CustomCheckBox(
                      textChoosen: 'الكاجوال',
                      onChanged: (value) {
                        setState(() {
                          casualSelected = value;
                        });
                      },
                      status: casualSelected,
                    ),
                    CustomCheckBox(
                      textChoosen: 'السوارية',
                      onChanged: (value) {
                        setState(() {
                          eveningWearSelected = value;
                        });
                      },
                      status: eveningWearSelected,
                    ),
                    SizedBox(height: 15.h,),
                    ElevatedButton(
                      style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all<Color>(
                          const Color(0x3F000000),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(220.w, 45.h)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (casualSelected && eveningWearSelected) {
                          setState(() {});
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 15.h),
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
                      ),
                    ),
                  ] else ...[
                    SizedBox(height: 25.h,),
                    ElevatedButton(
                      style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all<Color>(
                          const Color(0x3F000000),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(220.w, 45.h)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>KajwalScreen()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Text(
                          "الكاجوال",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'AlegreyaSC',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 2,
                            height: 0.05.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h,),
                    ElevatedButton(
                      style: ButtonStyle(
                        shadowColor: MaterialStateProperty.all<Color>(
                          const Color(0x3F000000),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(220.w, 45.h)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.r),
                            side: const BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SwaryhScreen()));

                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 15.h),
                        child: Text(
                          "السوارية",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'AlegreyaSC',
                            fontWeight: FontWeight.w400,
                            letterSpacing:2,
                            height: 0.05.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(30.r),
    borderSide: const BorderSide(color: Colors.white),
  );
}
