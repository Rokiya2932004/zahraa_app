
import 'package:flutter/material.dart';

import '../Component/list_of_Icons.dart';
import '../widget/customAppBar.dart';

class FolderScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          CustomAppBar(text: 'folders'),
          Padding(
            padding: const EdgeInsets.only(right: 25,top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomIcons.addIcon(),
                CustomIcons.archiveIcon(),
                CustomIcons.searchIcon(),
              ],
            ),
          )


        ],
      )



    );
  }
}
