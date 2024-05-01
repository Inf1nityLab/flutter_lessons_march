

import 'package:flutter/material.dart';
import 'package:flutter_lesson_march/lesson12/core/colors.dart';

class IconButtonWidget extends StatelessWidget {
  final IconData iconData;
  final Function() onPressed;
  const IconButtonWidget({super.key, required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(iconData, size: 30, color: AppColor.white,));
  }
}
