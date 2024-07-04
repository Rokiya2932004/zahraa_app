
import 'package:flutter/material.dart';

import 'AddCustomerFunction.dart';

class CustomIcons {
  void _showDialog( BuildContext context){
    showCustomAddDialog(context);
  }
   IconButton addIcon(BuildContext context) {
    return IconButton(
      onPressed: () {
        _showDialog(context);
      },
      icon: Image.asset('assets/icons/add icon.png'),
      iconSize:1 ,
    );
  }

  static IconButton searchIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/search icon.png'),
      iconSize:2 ,

    );
  }

  static IconButton archiveIcon(Function onPreased) {
    return IconButton(
      onPressed: () {
        onPreased();
      },
      icon: Image.asset('assets/icons/archive icon.png'),
      iconSize:0.3 ,

    );
  }

  static IconButton inprocessIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/inprocess icon.png'),
    );
  }

  static IconButton cancelIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/cancle icon.png'),
    );
  }

  static IconButton doneIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/doneicon.png'),
    );
  }

  static IconButton saveIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/save.png'),
      iconSize:65 ,

    );
  }
  static IconButton photoIcon(Function onPreased) {
    return IconButton(
      onPressed: () {
        onPreased();
      },
      icon: Image.asset('assets/icons/photo icon.png'),
      iconSize:95 ,

    );
  }
}