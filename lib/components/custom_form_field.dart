import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  String hintText;
  double? height;
  double? width;
  bool obscureText;
  IconButton? suffixIcon;
  CustomFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      required this.obscureText,
      this.height,
      this.width,
      
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      width:  width==null?MediaQuery.of(context).size.width * 0.8:width,
      height: height==null?MediaQuery.of(context).size.height * 0.06:height,
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
