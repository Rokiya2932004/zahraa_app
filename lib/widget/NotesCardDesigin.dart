import 'package:flutter/material.dart';
import '../views/ClintPage.dart';
import 'iconsStyleforNotes.dart';

class NotesDesignCard extends StatelessWidget {
  final String? CustomerName;
  const NotesDesignCard({this.CustomerName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ClintPage()));
      },
      child: Stack(
        children:[
          Container(
          width: double.maxFinite,
          height: 100,
            decoration: ShapeDecoration(
            color: Color(0xCC2868E3),
             shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(20),
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

        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "CustomerName",
                  style:const TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontFamily: 'Alegreya SC',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                IconsStyleCardNotes()

              ],
            ),
          ),
   ] ),
    );

  }
}
