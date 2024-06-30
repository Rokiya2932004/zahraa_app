import 'package:flutter/material.dart';

class CustomIcons {
  static IconButton addIcon() {
    return IconButton(
      onPressed: () {},
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

  static IconButton archiveIcon() {
    return IconButton(
      onPressed: () {},
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
    );
  }
}