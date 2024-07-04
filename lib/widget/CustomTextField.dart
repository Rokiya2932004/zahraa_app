import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
 final Color color;
  CustomTextField({required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        minLines: 8,
        maxLines: 100,
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        cursorColor: Colors.black,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border:buildBorder(),
            enabledBorder: buildBorder(color),
            focusedBorder: buildBorder(color)
        ),
      ),
    );
  }
}
OutlineInputBorder buildBorder([Color color = Colors.transparent]){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(
          color: color,
        width: 2
      )
  );
}