import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Component/IconsClass.dart';
import '../widget/customAppBar.dart';

class ArchiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [
                CustomAppBar(text: 'archive',textAlign: TextAlign.left, textDirection: TextDirection.ltr, ),
                Positioned(
                  right: 10.w,
                  bottom: 20.h,
                  child: CustomIcons.UNarchiveIcon(context),
                ),
              ]),

        ],
      ),

    );
  }
}
