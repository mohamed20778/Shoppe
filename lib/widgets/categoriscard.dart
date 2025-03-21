import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/utils/responsive_helper/sizer_helper_extension.dart';

class Categoriescard extends StatefulWidget {
  const Categoriescard({super.key});

  @override
  State<Categoriescard> createState() => _CategoriescardState();
}

class _CategoriescardState extends State<Categoriescard> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: context.isLandscape?context.setHeight(192)*1.5:context.setHeight(192),
        maxWidth: context.isLandscape?context.setWidth(165)*1.5:context.setWidth(165)
      ),
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9.r)),
        elevation: 4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              width: double.infinity,
              'assets/images/clothescategory.png',
              fit: BoxFit.fill,
              
            ),
          ),
          SizedBox(
            height: context.setHeight(10),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: context.setWidth(6), right: context.setWidth(6)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Clothing',
                  style: TextStyle(
                      fontSize: context.setSp(16),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'raleway'),
                ),
                Container(
                  width: context.setButtonWidth(38),
                  height: context.setButtonHeight(21),
                  decoration: BoxDecoration(
                    color: const Color(0XFFDFE9FF),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: Text(
                      '235',
                      style: TextStyle(
                        fontFamily: 'raleway',
                        fontWeight: FontWeight.bold,
                        fontSize: context.setSp(12),
                      ),
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: context.setHeight(5),)
        ]),
      ),
    );
  }
}
