import 'package:flutter/material.dart';

import '../Component/IconsClass.dart';

class IconsStyleCardNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomIcons.inprocessIcon(),
          CustomIcons.cancelIcon(),
          CustomIcons.doneIcon(),
        ],
      ),
    );
  }
}
