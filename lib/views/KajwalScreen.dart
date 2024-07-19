
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Component/IconsClass.dart';
import '../widget/CustomContainer.dart';
import '../widget/DataForm.dart';
import '../widget/customAppBar.dart';

class KajwalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
                children:[
                      CustomAppBar(
                        text: 'الكاجوال',
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        rightAligned: true,),
                  Positioned(
                    left: 10.w,
                    bottom: 10.h,
                    child: CustomIcons.saveIcon(),
                  ),
                ]),
            SizedBox(height: 25.h,),
            CustomContainer(
              textname: 'مقاسات الكورساج و الجيبة',
              width: 155.w,
              high: 40.h, FontSize: 16.sp,),
            SizedBox(height: 10.h,),
            Column(
              children: [
                DataForm(datainPrice: 'دوران الشيست',),
                DataForm(datainPrice: 'دوران الصدر ',),
                DataForm(datainPrice: 'دوران الوسط',),
                DataForm(datainPrice: 'دوران الهيب',),
                DataForm(datainPrice: 'عرض الكتف',),
                DataForm(datainPrice: 'عرض الظهر ',),
                DataForm(datainPrice: 'الفرق بين نقطتين',),
                DataForm(datainPrice: 'طول الظهر ',),
                DataForm(datainPrice: 'طول الجنب ',),
                DataForm(datainPrice: 'طول الصدر لاعلى نقطة',),
                DataForm(datainPrice: 'طول البلوزة الامام',),
                DataForm(datainPrice: 'طول البلوزة الخلفي',),
                DataForm(datainPrice: 'طول الجيبة',),
                DataForm(datainPrice: 'الطول الكلى',),
              ],
            ),
            SizedBox(height: 5.h,),
            CustomContainer(
              textname: 'مقاسات الكم ',
              width: 150.w,
              high: 40.h, FontSize: 16.sp,),
            SizedBox(height: 5.h,),
            Column(
              children: [
                DataForm(datainPrice: 'دوران العضلة',),
                DataForm(datainPrice: 'دوران الاسورة الكبرى ',),
                DataForm(datainPrice: 'دوران الاسورة الصغرى',),
                DataForm(datainPrice: 'طول الكوع',),
                DataForm(datainPrice: 'طول الكم',),
                DataForm(datainPrice: 'راسم الكم ')
              ],
            ),
            SizedBox(height: 10.h,),
            CustomContainer(
              textname: 'مقاسات البنطلون',
              width: 150.w,
              high: 40.h, FontSize: 16.sp,),
            SizedBox(height: 5.h,),
            Column(
              children: [
                DataForm(datainPrice: 'دوران الوسط',),
                DataForm(datainPrice: 'دوران الهيب ',),
                DataForm(datainPrice: 'دوران الركبة',),
                DataForm(datainPrice: 'دوران الانكل',),
                DataForm(datainPrice: 'طول الجنب',),
                DataForm(datainPrice: 'طول الحجر',),
                DataForm(datainPrice: 'طول الركبة ',),
                DataForm(datainPrice: 'طول البنطلون ',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
