
import 'package:flutter/material.dart';


class customButton extends StatelessWidget {
  final String name;
  customButton({required this.name});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(113,  54.66)),
          backgroundColor: MaterialStateProperty.all(Color(0xFF5486E9)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
              ))
      ),
        onPressed: (){
        },
        child: Text(
          '$name',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontFamily: 'AlegreyaSC',
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
    );
  }
}
