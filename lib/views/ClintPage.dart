
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Component/IconsClass.dart';
import '../widget/CustomContainer.dart';
import '../widget/CustomTextField.dart';
import '../widget/PickImage.dart';
import '../widget/customAppBar.dart';
import '../widget/customButton.dart';
import 'PriceScreen.dart';
import 'KajwalScreen.dart';

class ClintPage extends StatelessWidget {
   void toPriceScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PriceForm()));
  }
   void toSizeScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>KajwalScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
                children:[
                  CustomAppBar(text: 'clint name',textAlign: TextAlign.left, textDirection: TextDirection.ltr, ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                    child: Container(
                      height: 130.h,
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                          children:[
                            CustomIcons.saveIcon()
                          ]),
                    ),
                  )
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(name: "size", onPreased:  () => toSizeScreen(context),),
                customButton(name: "price", onPreased: () => toPriceScreen(context),),
              ],
            ),
            SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.only(right: 200.w),
              child: CustomContainer(textname: 'photo', width: 106.w, high: 45.h, FontSize: 28.sp,),
            ),
             SizedBox(height: 20.h,),
            PickImage(),
             SizedBox(height: 20.h,),
            Padding(
              padding:  EdgeInsets.only(right: 200.w),
              child: CustomContainer(textname: 'notes', width: 90.w, high: 45.h, FontSize: 28.sp,),
            ),
             SizedBox(height: 20.h,),
            CustomTextField(color: Color(0xFF000000),),

          ],


        ),
      ),
    );
  }
}
