
import 'package:flutter/material.dart';

import '../Component/IconsClass.dart';
import '../widget/customAppBar.dart';

class SizeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children:[
                    CustomAppBar(text: 'الكاجوال', textAlign: TextAlign.right, textDirection: TextDirection.rtl,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Container(
                    height: 130,
                    alignment: Alignment.centerLeft,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:[
                          CustomIcons.saveIcon()
                        ]),
                  ),
                ),

              ]),
        ],
      ),
    );
  }
}
