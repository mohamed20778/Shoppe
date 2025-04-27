import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? contentPadding;

  const CustomFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.height,
    this.width,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(52.r),
            color: const Color(0xffF8F8F8),
          ),
          width: width ?? 335.w,
          height: height ?? 52.h,
          child: TextFormField(
            controller: controller,
            validator: validator,
            keyboardType: keyboardType,
            obscureText: obscureText,
            textAlign: TextAlign.start,
            textAlignVertical: TextAlignVertical.center,
            cursorColor: Colors.grey,
            cursorHeight: context.setHeight(16),
            decoration: InputDecoration(
              contentPadding: contentPadding ??
                  EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 16.h,
                  ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14.sp,
              ),
              prefixIcon: prefixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 16.w, right: 8.w),
                      child: prefixIcon,
                    )
                  : null,
              suffixIcon: suffixIcon != null
                  ? Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: suffixIcon,
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(52.r),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(52.r),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(52.r),
                borderSide: BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(52.r),
                borderSide: const BorderSide(color: Colors.red, width: 1),
              ),
              errorStyle: const TextStyle(height: 0, fontSize: 0),
              isDense: true,
            ),
            onChanged: onChanged,
          ),
        ),
        // Error message container with fixed height
        SizedBox(
          height: 20.h, // Fixed space for error message
          child: Builder(
            builder: (context) {
              final error =
                  validator != null ? validator!(controller?.text ?? '') : null;
              return error != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 4.h),
                      child: Text(
                        error,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 10.sp,
                        ),
                      ),
                    )
                  : const SizedBox.shrink();
            },
          ),
        ),
      ],
    );
  }
}
