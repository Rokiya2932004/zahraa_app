
import 'package:flutter/material.dart';
import '../widget/IconsStyleforAppBar.dart';
import '../widget/customAppBar.dart';

class FolderScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          CustomAppBar(text: 'folders'),
          IconsStyle()


        ],
      )



    );
  }
}
