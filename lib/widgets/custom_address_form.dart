import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/theme/app_color.dart';
import 'package:shoppe/core/theme/app_style.dart';

class CustomAddressForm extends StatelessWidget {
  String labelText;
  CustomAddressForm({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 37.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColor.secondColor),
      child: TextFormField(
        textAlign: TextAlign.start,
        cursorColor: AppColor.primaryColor,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r),
            ),
            labelText: labelText,
            labelStyle: AppStyle.black12style(
              context,
            )),
      ),
    );
  }
}
