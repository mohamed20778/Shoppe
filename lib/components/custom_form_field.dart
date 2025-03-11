import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;
  final double? width; // Responsive width factor
  final double? height; // Responsive height factor

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
    this.width
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen size
   

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(52.r),
        color:  const Color(0xffF8F8F8),
      ),
      // ignore: prefer_if_null_operators
      width: width == null ? context.setButtonWidth(335) : width,
     
      // ignore: prefer_if_null_operators
      height: height == null ? context.setButtonHeight(52) : height, // Set responsive height
      child: 
          TextSelectionTheme(
            data: const TextSelectionThemeData(
              cursorColor: Colors.grey,
              selectionColor: Colors.grey,
            ),
            child: TextFormField(
              textAlign: TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              cursorColor: Colors.grey,
              cursorHeight: context.setHeight(16),
              controller: controller,
              validator: validator,
              keyboardType: keyboardType,
              obscureText: obscureText,
              decoration: InputDecoration(
                
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(52.r),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none

                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide.none
                )
              ),
              onChanged: onChanged,
            ),
          ));
     
  }
}