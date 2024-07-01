import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
void AppearImage(BuildContext context,String imagePath) {
  showDialog(
    context: context,
    builder: (BuildContext context){
      return Dialog(
        child: PhotoView(
            imageProvider: FileImage(File(imagePath)),

        ),
      );
    },
  );
}
