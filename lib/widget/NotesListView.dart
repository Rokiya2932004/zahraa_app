import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'NotesCardDesigin.dart';
class NotesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        itemBuilder: (context,index){
            return  Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h,horizontal: 20.w),
              child: NotesDesignCard(customerName: 'ASIL ALI ASER',),
            );
        });
  }
}
