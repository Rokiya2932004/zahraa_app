import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Component/IconsClass.dart';
import '../widget/CustomTextField.dart';
import '../widget/DataForm.dart';
import '../widget/customAppBar.dart';
class PriceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
                children:[
                  CustomAppBar(text: 'price form', textAlign: TextAlign.left, textDirection: TextDirection.ltr,),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DataForm(datainPrice: 'سعر  الخيط',),
                DataForm(datainPrice: 'سعر الكهرباء',),
                DataForm(datainPrice: 'دراي كلين   ',),
                DataForm(datainPrice: 'سعر الشنط',),
                DataForm(datainPrice: 'شغل ايدي',),
                DataForm(datainPrice: 'المواصلات',),
                SizedBox(height: 25.h,),
                CustomTextField(color: Color(0xFF2868E3),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
