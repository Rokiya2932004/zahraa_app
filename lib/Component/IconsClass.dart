import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'AddCustomerFunction.dart';

class CustomIcons {
  void _showDialog(BuildContext context) {
    showCustomAddDialog(context);
  }

  double _calculateIconSize() {
    double baseSize = 20;
    if (ScreenUtil().screenWidth < 600) {
      return baseSize.sp;
    } else if (ScreenUtil().screenWidth >= 600 || ScreenUtil().screenWidth < 900) {
      return (baseSize * 1.5).sp;
    } else {
      return (baseSize * 2).sp;
    }
  }

  IconButton addIcon(BuildContext context) {
    double iconSize = _calculateIconSize();
    return IconButton(
      onPressed: () {
        _showDialog(context);
      },
      icon: Image.asset('assets/icons/add icon.png'),
      iconSize: iconSize,
    );
  }

  static IconButton searchIcon() {
    double iconSize = CustomIcons()._calculateIconSize();
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/search icon.png'),
      iconSize: iconSize,
    );
  }

  static IconButton archiveIcon(Function onPressed) {
    double iconSize = CustomIcons()._calculateIconSize();
    return IconButton(
      onPressed: () {
        onPressed();
      },
      icon: Image.asset('assets/icons/archive icon.png'),
      iconSize: iconSize,
    );
  }

  static IconButton inprocessIcon() {
    double iconSize = CustomIcons()._calculateIconSize();
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/inprocess icon.png'),
      iconSize: iconSize,
    );
  }

  static IconButton cancelIcon() {
    double iconSize = CustomIcons()._calculateIconSize();
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/cancle icon.png'),
      iconSize: iconSize,
    );
  }

  static IconButton doneIcon() {
    double iconSize = CustomIcons()._calculateIconSize();
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/doneicon.png'),
      iconSize: iconSize,
    );
  }

  static IconButton saveIcon() {
    return IconButton(
      onPressed: () {},
      icon: Image.asset('assets/icons/save.png'),
      iconSize:65.w ,

    );
  }
  static IconButton photoIcon(Function onPreased) {
    return IconButton(
      onPressed: () {
        onPreased();
      },
      icon: Image.asset('assets/icons/photo icon.png'),
      iconSize:95.w ,

    );
  }
}
