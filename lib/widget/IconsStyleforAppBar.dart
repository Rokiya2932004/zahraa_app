import 'package:flutter/material.dart';

import '../Component/IconsClass.dart';

class IconsStyle extends StatelessWidget {
  final  addIcon =  CustomIcons();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          addIcon.addIcon(context),
          CustomIcons.archiveIcon(),
          CustomIcons.searchIcon(),
        ],
      ),
    );
  }
}
