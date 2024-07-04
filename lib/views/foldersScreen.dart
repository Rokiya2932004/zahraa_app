
import 'package:flutter/material.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 10),
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
