import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoppe/core/theme/app_fonts.dart';
import 'package:shoppe/core/theme/app_style.dart';
import 'package:shoppe/models/product_model.dart';

class ProductCard extends StatefulWidget {
  ProductModel productItem;
  ProductCard({super.key, required this.productItem});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      width: 140.w,
      height: 204.h,
      margin: EdgeInsets.only(right: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            elevation: 5,
            child: Image.network(
              widget.productItem.images[0],
              height: 130.h,
              width: 130.w,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/images/artist-2 1.png',
                fit: BoxFit.cover,
              ),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Container(
            width: 140.w,
            padding: EdgeInsets.symmetric(horizontal: 5.w), // Add some padding
            child: Text(
              widget.productItem.title,
              style: AppStyle.black12style(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            " ${widget.productItem.price.toString()} \$",
            style: TextStyle(
              fontSize: 17.sp,
              fontFamily: AppFonts.raleway,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
