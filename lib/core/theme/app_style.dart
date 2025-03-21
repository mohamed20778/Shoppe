import 'package:flutter/widgets.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/core/theme/app_fonts.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class AppStyle {
  static TextStyle headlinestyle1(BuildContext context) => TextStyle(
      fontSize: context.setSp(50),
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      fontFamily: AppFonts.raleway);
  static TextStyle headlinestyle2(BuildContext context) => TextStyle(
      fontSize: context.setSp(28),
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      fontFamily: AppFonts.raleway);
  static TextStyle headlinestyle3(BuildContext context) => TextStyle(
      fontSize: context.setSp(21),
      color: AppColor.blackColor,
      fontWeight: FontWeight.bold,
      fontFamily: AppFonts.raleway);
  static TextStyle normaltextstyle(BuildContext context) => TextStyle(
      fontSize: context.setSp(19),
      fontWeight: FontWeight.normal,
      color: AppColor.blackColor,
      fontFamily: AppFonts.nunito);
  static TextStyle black12style(BuildContext context) => TextStyle(
      fontSize: context.setSp(12),
      fontWeight: FontWeight.bold,
      color: AppColor.blackColor,
      fontFamily: AppFonts.nunito);
}
