import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Component/IconsClass.dart';

class IconsStyleCardNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      child: Row(
        children: [
          CustomIcons.inprocessIcon(),
          CustomIcons.cancelIcon(),
          CustomIcons.doneIcon(context),
        ],
      ),
    );
  }
}
