import 'package:flutter/material.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

// ignore: must_be_immutable
class CircleButton extends StatelessWidget {
  IconData? icon;
  Color? color;
   CircleButton({super.key,required this.icon,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.setButtonWidth(30),
      height: context.setButtonHeight(30),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: blucolor, width: 2)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: blucolor,
          size: context.setWidth(12),
        ),
      ),
    );
  }
}
