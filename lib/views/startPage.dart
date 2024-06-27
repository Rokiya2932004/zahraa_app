import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children:[
          Expanded(
            child: Container(
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/logo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding:  EdgeInsets.only(left: 80),
              child: Text(
                'Zoza Designs',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontFamily: 'AlegreyaSC',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 5.12,
                  height: 5,
                  decoration: TextDecoration.underline
                ) ,
              ),
            ),
          ),
          Expanded(
            child: Positioned(
              bottom: 85,
              left:50,
              child: Container(
                width: 320,
                height: 50,
                child: ElevatedButton(
                    onPressed: (){},
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(300, 60)),
                      backgroundColor: MaterialStateProperty.all( Color(0xFF2868E3),),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side:const BorderSide(color:Color(0xff5B8699),)
                          ))
                  ),
                    child:const Text(
                      'Get Start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'AlegreyaSC',
                        fontWeight: FontWeight.w400,
                        letterSpacing: 4.80,
                      ),
                    ),
                ),
              ),
            ),
          )

        ]
      ),
      
      


    );
  }
}