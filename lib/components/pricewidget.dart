import 'package:flutter/material.dart';

class ColorOrSizeWidget extends StatelessWidget {
  String colororsize;
   ColorOrSizeWidget({super.key, required this.colororsize});

  @override
  Widget build(BuildContext context) {
    final double screenwidth = MediaQuery.of(context).size.width;
    final double screenheight = MediaQuery.of(context).size.height;
    return Container(
                  width: screenwidth * 0.13,
                  height: screenheight * 0.03,
                  decoration: BoxDecoration(
                    color: Color(0XFFDFE9FF),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(colororsize,
                          style: TextStyle(
                              fontFamily: 'raleway',
                              fontWeight: FontWeight.bold,
                              fontSize: 12))));
  }
}