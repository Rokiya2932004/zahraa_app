import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../views/ClintPage.dart';
import 'iconsStyleforNotes.dart';

class NotesDesignCard extends StatelessWidget {
  final String customerName;
  const NotesDesignCard({required this.customerName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ClintPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 3.w),
        width: 320.w,
        height: 100.h,
        decoration: ShapeDecoration(
          color: Color(0xCC2868E3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x63000000),
              blurRadius: 10,
              offset: Offset(0, 7),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  customerName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.sp,
                    fontFamily: 'Alegreya SC',
                    fontWeight: FontWeight.w400,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.w),
              child: IconsStyleCardNotes(),
            ),
          ],
        ),
      ),
    );
  }
}
