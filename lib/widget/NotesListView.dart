import 'package:flutter/material.dart';

import 'NotesCardDesigin.dart';
class NotesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        itemBuilder: (context,index){
            return const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 15),
              child: NotesDesignCard(),
            );
        });
  }
}
