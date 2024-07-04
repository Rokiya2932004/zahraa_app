import 'package:flutter/material.dart';

import '../Component/IconsClass.dart';
import '../widget/CustomTextField.dart';
import '../widget/DataInPrice.dart';
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
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Container(
                      height: 130,
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
                DataInPrice(datainPrice: 'سعر  الخيط',),
                DataInPrice(datainPrice: 'سعر الكهرباء',),
                DataInPrice(datainPrice: 'دراي كلين   ',),
                DataInPrice(datainPrice: 'سعر الشنط',),
                DataInPrice(datainPrice: 'شغل ايدي',),
                DataInPrice(datainPrice: 'المواصلات',),
                SizedBox(height: 25,),
                CustomTextField(color: Color(0xFF2868E3),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
