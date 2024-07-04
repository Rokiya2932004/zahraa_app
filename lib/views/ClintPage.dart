
import 'package:flutter/material.dart';
import '../Component/IconsClass.dart';
import '../widget/CustomContainer.dart';
import '../widget/CustomTextField.dart';
import '../widget/PickImage.dart';
import '../widget/customAppBar.dart';
import '../widget/customButton.dart';
import 'PriceScreen.dart';
import 'SizeScreen.dart';

class ClintPage extends StatelessWidget {
   void toPriceScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>PriceForm()));
  }
   void toSizeScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>SizeScreen()));
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
                  CustomAppBar(text: 'Clint Name',textAlign: TextAlign.left, textDirection: TextDirection.ltr, ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customButton(name: "size", onPreased:  () => toSizeScreen(context),),
                customButton(name: "price", onPreased: () => toPriceScreen(context),),
              ],
            ),
           const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: CustomContainer(textname: 'photo', width: 110, high: 50,),
            ),
            const SizedBox(height: 20,),
            PickImage(),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: CustomContainer(textname: 'notes', width: 110, high: 50,),
            ),
            const SizedBox(height: 20,),
            CustomTextField(color: Color(0xFF000000),),

          ],


        ),
      ),
    );
  }
}
