import 'package:flutter/material.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

// ignore: must_be_immutable
class ColorOrSizeWidget extends StatelessWidget {
  String colororsize;
  ColorOrSizeWidget({super.key, required this.colororsize});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.setButtonWidth(54),
        height: context.setButtonHeight(25),
        decoration: BoxDecoration(
          color: const Color(0XFFDFE9FF),
          borderRadius: BorderRadius.circular(context.setRadius(4)),
        ),
        child: Center(
            child: Text(colororsize,
                style: TextStyle(
                    fontFamily: 'raleway',
                    fontWeight: FontWeight.bold,
                    fontSize: context.setSp(12)))));
  }
}
