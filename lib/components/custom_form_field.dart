import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  String hintText;
  bool obscureText;
  IconButton? suffixIcon;
  CustomFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(55),
        color: Color(0xffF8F8F8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 13),
        child: TextSelectionTheme(
          data: TextSelectionThemeData(cursorColor: Colors.grey,selectionColor: Colors.grey),
          child: TextFormField(
            
              obscureText: obscureText,
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                
                  suffixIcon: suffixIcon,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey),
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(55)),
                  enabledBorder:
                      UnderlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none))),
        ),
      ),
    );
  }
}
