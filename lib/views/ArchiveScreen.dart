import 'package:flutter/material.dart';
import '../widget/customAppBar.dart';

class ArchiveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [
                CustomAppBar(text: 'Archive',textAlign: TextAlign.center, ),
               const Positioned(
                 right: 35,
                  bottom: 18,
                  child: Icon(
                      Icons.archive_outlined,
                    size: 45,
                  ),
                )
              ]),

        ],
      ),

    );
  }
}
