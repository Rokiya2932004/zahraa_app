import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

import '../Component/FunctionAppearImage.dart';
import '../Component/IconsClass.dart';

class PickImage extends StatefulWidget {
  @override
  _PickImageState createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {
  List<XFile> selectedImages = [];

  Future<void> pickphoto() async {
    final imagePicker = ImagePicker();
    final List<XFile>? selected = await imagePicker.pickMultiImage();
    if (selected != null && selected.isNotEmpty) {
      setState(() {
        selectedImages.addAll(selected);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: 400,
        height: 220,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 2,
              strokeAlign: BorderSide.strokeAlignOutside,
            ),
            borderRadius: BorderRadius.circular(10),
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
        child: selectedImages.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIcons.photoIcon(pickphoto),
                  const Text(
                    'Choose From Device',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'AlegreyaSC',
                      fontWeight: FontWeight.w400,
                      height: 0.06,
                    ),
                  ),
                ],
              )
            : ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: selectedImages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () =>
                        AppearImage(context, selectedImages[index].path),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Image.file(File(selectedImages[index].path)),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
