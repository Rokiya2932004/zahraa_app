
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zahraa_app/views/startPage.dart';

void main(){
  runApp(ZozaDesigns());
}
class ZozaDesigns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:  Size(360, 800),
      builder:(context,child) {
        return  MaterialApp(
          theme: ThemeData(
            dialogTheme: DialogTheme(
              backgroundColor: Color(0xFF5486E9),
              elevation: 11,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.r),
                side: BorderSide(
                  color: Colors.black,
                  width: 2.w,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              shadowColor: Color(0x3F000000),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: StartPage(),
        );
      } );
      }
  }
