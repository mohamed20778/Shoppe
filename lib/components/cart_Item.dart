import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shoppe/components/circle_button.dart';
import 'package:shoppe/components/ColorOrSizeWidget.dart';
import 'package:shoppe/responsive_helper/sizer_helper_extension.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: context.setHeight(10)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Material(
                
                elevation: 5,
                borderRadius: BorderRadius.circular(context.setRadius(9)),
                child: Container(
                 
                  width: context.isLandscape ? 123.w : 122.w,
                  height: context.isLandscape ? 103.h * 2 : 103.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(context.setRadius(9)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(context.setWidth(2)),
                    child: Container(
                      width: context.isLandscape ? 121.w : 120.w,
                      height: context.isLandscape ? 101.h * 2 : 101.h,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(context.setRadius(9)),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/artist-2 1.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: context.setWidth(10),
                            top: context.setHeight(10),
                            bottom: context.setHeight(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: context.isLandscape
                                  ? context.setRadius(16) * 2
                                  : context.setRadius(16),
                              child: Center(
                                child: FaIcon(
                                  Icons.delete_outlined,
                                  color: const Color(0xffFF5790),
                                  size: context.isLandscape
                                      ? context.setWidth(20) * 1.2
                                      : context.setWidth(20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: context.setWidth(16),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: context.setWidth(10)),
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur.',
                    style: TextStyle(
                      fontFamily: 'NunitoSans',
                      fontSize: context.setSp(13),
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  height: context.setHeight(8),
                ),
                SizedBox(
                  height: context.setHeight(23),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$18',
                      style: TextStyle(
                        fontFamily: 'raleway',
                        fontSize: context.setSp(18),
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Row(
                      children: [
                        CircleButton(icon: Icons.remove, color: Colors.white),
                        SizedBox(
                          width: context.setWidth(6),
                        ),
                        ColorOrSizeWidget(colororsize: '1'),
                        SizedBox(
                          width: context.setWidth(6),
                        ),
                        CircleButton(icon: Icons.add, color: Colors.white),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
