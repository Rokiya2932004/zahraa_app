import 'package:flutter/material.dart';
import '../Component/IconsClass.dart';
import '../widget/CustomContainer.dart';
import '../widget/CustomTextField.dart';
import '../widget/PickImage.dart';
import '../widget/customAppBar.dart';
import '../widget/customButton.dart';

class ClintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
                children:[
                  CustomAppBar(text: 'Clint Name',),
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
                customButton(name: "size",),
                customButton(name: "price",),
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
            CustomTextField(),

          ],


        ),
      ),
    );
  }
}
