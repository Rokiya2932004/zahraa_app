import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'foldersScreen.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children:[
          Container(
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/logo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 55.h,
            left: 0,
            right: 0,
             child: Center(
               child: Text(
                 'Zoza Designs',
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: 32.sp,
                   fontFamily: 'AlegreyaSC',
                   fontWeight: FontWeight.w700,
                   letterSpacing: 5.12,
                   decoration: TextDecoration.underline
                 ) ,
                 textAlign: TextAlign.center,
               ),
             ),
           ),

          Positioned(
             bottom: 85.h,
            left:20.w,
            child: Container(
              width: 320.w,
              height: 50.h,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FolderScreen()));
                  },
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(300.w, 60.h)),
                    backgroundColor: MaterialStateProperty.all( Color(0xFF2868E3),),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            side:const BorderSide(color:Color(0xff5B8699),)
                        ))
                ),
                  child: Text(
                    'Get Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.sp,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'AlegreyaSC',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 4.80.w,
                    ),
                  ),
              ),
            ),
          )

        ]
      ),
      
      


    );
  }
}