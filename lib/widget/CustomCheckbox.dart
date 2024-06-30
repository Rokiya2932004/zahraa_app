import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  final String textChoosen;
  CustomCheckBox({required this.textChoosen});
  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.2,
      child: CheckboxListTile(
        activeColor: Colors.white,
        checkColor: Colors.black,
          side: BorderSide(
              color: Colors.black,
              width: 2
          ),


        title:  Text(
            widget.textChoosen,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
          style:const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'AlegreyaSC',
            fontWeight: FontWeight.w400,
            height: 0,

          ),
        ),
          value: status,
          onChanged:(val){
          setState(() {
            status = val!;
          });
          }),
    );
  }
}
