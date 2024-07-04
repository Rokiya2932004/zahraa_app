import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Component/IconsClass.dart';
import '../views/ArchiveScreen.dart';

class IconsStyle extends StatelessWidget {
  void toArchiveScreen(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ArchiveScreen()));
  }
  final  addIcon =  CustomIcons();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          addIcon.addIcon(context),
          CustomIcons.archiveIcon(() => toArchiveScreen(context)),
          CustomIcons.searchIcon(),
        ],
      ),
    );
  }
}
