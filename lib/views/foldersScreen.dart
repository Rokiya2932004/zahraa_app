
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/IconsStyleforAppBar.dart';
import '../widget/NotesListView.dart';
import '../widget/customAppBar.dart';

class FolderScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Stack(
            children: [
              CustomAppBar(text: 'folders',textAlign: TextAlign.left, textDirection: TextDirection.ltr, ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 5.w),
                child: IconsStyle(),
              ),
            ],
          ),
          Expanded(child: NotesListView()),

        ],
      ),




    );
  }
}
