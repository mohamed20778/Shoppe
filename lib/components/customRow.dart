import 'package:flutter/material.dart';
import 'package:shoppe/constants.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

// ignore: must_be_immutable
class CustomRow extends StatelessWidget {
  double? spaceBetween;
  String rowText;
  double fontSize;
   CustomRow({super.key, this.spaceBetween,required this.rowText,required this.fontSize});
  

  @override
  Widget build(BuildContext context) {
    return Row(
      
      mainAxisAlignment:spaceBetween!=null? MainAxisAlignment.start: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        rowText,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: context.setSp(fontSize),
                            fontFamily: 'raleway',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: spaceBetween!=null?context.setWidth(spaceBetween!):null,
                      ),
                      Container(
                          width: context.setButtonWidth(30),
                          height: context.setButtonHeight(30),
                          decoration: BoxDecoration(
                              color: blucolor,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: context.setWidth(15),
                            ),
                          )),
                    ],
                  );
  }
}