import 'package:flutter/material.dart';

import '../Component/IconsClass.dart';

class IconsStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIcons.addIcon(),
          CustomIcons.archiveIcon(),
          CustomIcons.searchIcon(),
        ],
      ),
    );
  }
}
