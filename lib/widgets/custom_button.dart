import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  String text;
  Color color;
  Color textcolor;
  double width;
  double height;
  double? fontSize;
  void Function()? buttonfunction;
  String? fontFamily;

  MyButton(
      {super.key,
      this.fontFamily,
      this.fontSize,
      required this.buttonfunction,
      required this.text,
      required this.color,
      required this.width,
      required this.height,
      required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraints) {
        if (context.isTablet == false) {
          return Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(16.r)),
            width: width,
            height: height,
            child: MaterialButton(
              onPressed: buttonfunction,
              child: Text(
                text,
                style: TextStyle(
                    color: textcolor,
                    fontSize: fontSize == null ? context.setSp(22) : fontSize,
                    fontFamily: fontFamily == null ? 'NunitoSans' : fontFamily),
              ),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(13.r)),
            width: width * 0.8,
            height: height * 0.7,
            child: MaterialButton(
              onPressed: buttonfunction,
              child: Text(
                text,
                style: TextStyle(
                    color: textcolor,
                    fontSize: context.setSp(22),
                    fontFamily: 'NunitoSans'),
              ),
            ),
          );
        }
      },
    );
  }
}
