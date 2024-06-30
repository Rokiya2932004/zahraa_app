import 'package:flutter/material.dart';

import '../widget/CustomCheckbox.dart';
void showCustomAddDialog(BuildContext context){
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            content: Container(
              height: 270,
              width: 340,
              child: Column(
                children: [
                  SizedBox(height: 18,),
                  TextField(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                        hintText: "الأسم",
                      hintStyle:const TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'AlegreyaSC',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border:buildBorder(),
                        enabledBorder: buildBorder(),
                        focusedBorder: buildBorder()
                    ),
                  ),
                  SizedBox(height: 12,),
                  CustomCheckBox(textChoosen: 'الكاجوال',),
                  CustomCheckBox(textChoosen: 'السوارية',),
                  SizedBox(height: 15,),
                  ElevatedButton(
                    style:ButtonStyle(
                      shadowColor: MaterialStateProperty.all<Color>(
                        Color(0x3F000000)
                      ),
                        minimumSize: MaterialStateProperty.all(Size(220, 45)),
                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                                side: BorderSide(color: Colors.white)
                            )
                        )
                    ) ,
                      onPressed: (){},
                      child:const Text(
                        "add",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontFamily: 'AlegreyaSC',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 4.80,
                            height: 0.05,


                        ),
                      )),
                  SizedBox(height: 12,),

                ],
              ),
            ),

          );
        });
}
OutlineInputBorder buildBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide:const BorderSide(
          color: Colors.white
      )
  );
}
