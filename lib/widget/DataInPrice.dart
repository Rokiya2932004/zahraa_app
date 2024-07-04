
import 'package:flutter/material.dart';

class DataInPrice extends StatelessWidget {
  final String datainPrice;
  DataInPrice({required this.datainPrice});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 135,
            height: 45,
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border:buildBorder(),
                  enabledBorder: buildBorder(),
                  focusedBorder: buildBorder()
              ),
            ),
          ),
          Text(
            '$datainPrice',
            textAlign: TextAlign.right,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
              fontFamily: 'AlegreyaSC',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),

        ],
      ),
    );
  }
}

OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide:const BorderSide(
          color:  Color(0xFF2868E3),
        width: 3
      )
  );
}