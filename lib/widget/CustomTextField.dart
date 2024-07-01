import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
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
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder()
        ),
      ),
    );
  }
}
OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide:const BorderSide(
          color: Colors.black,
        width: 2
      )
  );
}