
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
            SizedBox(height: 15.w,),
            CustomContainer(
              textname: 'مقاسات الكورساج و الجيبة',
              width: 290.w,
              high: 59.46.h, FontSize: 25.sp,),
            SizedBox(height: 10.w,),
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
              ],
            ),
            SizedBox(height: 5.w,),
            CustomContainer(
              textname: 'مقاسات الكم ',
              width: 280.w,
              high: 56.h, FontSize: 25.sp,),
            SizedBox(height: 5.w,),
            Column(
              children: [
                DataForm(datainPrice: 'دوران العضلة',),
                DataForm(datainPrice: 'دوران الاسورة الكبرى ',),
                DataForm(datainPrice: 'دوران الاسورة الصغرى',),
                DataForm(datainPrice: 'طول الكوع',),
                DataForm(datainPrice: 'طول الكم',),
                DataForm(datainPrice: 'راسم الكم ',StaticText: ' ١٣ سم ')
              ],
            ),
            SizedBox(height: 10.w,),
            CustomContainer(
              textname: 'مقاسات البنطلون',
              width: 280.w,
              high: 56.h, FontSize: 25.sp,),
            SizedBox(height: 5.w,),
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
