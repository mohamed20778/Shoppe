import 'package:flutter/material.dart';
import 'package:shoppe/constants.dart';

class MyButton extends StatelessWidget {
  String text;
  Color color;
  Color textcolor;
  double width;
  double height;
  void Function()? buttonfunction;
 
   MyButton({super.key,required this.buttonfunction,required this.text,required this.color,required this.width,required this.height,required this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
color: color,
borderRadius: BorderRadius.circular(16)
      ),
      
      width:width,
      height: height,
      child: MaterialButton(
        
        
        onPressed: buttonfunction, 
        child: Text(text,style: TextStyle(color: textcolor,fontSize: 22,fontFamily: 'NunitoSans'),),
        ),
    );
  }
}