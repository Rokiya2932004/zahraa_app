import 'package:flutter/material.dart';

import '../Component/list_of_Icons.dart';

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
